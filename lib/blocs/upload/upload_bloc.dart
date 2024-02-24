import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;
import 'package:mauzy_story_app/core.dart';

part 'upload_event.dart';
part 'upload_state.dart';
part 'upload_bloc.freezed.dart';

class UploadBloc extends Bloc<UploadEvent, UploadState> {
  final ApiService datasource;
  UploadBloc(this.datasource) : super(const _Initial()) {
    on<_AddStory>((event, emit) async {
      emit(const _Uploading());

      try {
        final result = await datasource.addNewStory(
            event.token, event.bytes, event.fileName, event.description);

        result.fold(
          (l) => emit(_Error(l)),
          (r) => emit(_Uploaded(r)),
        );
      } catch (e) {
        debugPrint('$e');
        emit(const _Error(
            'Failed to connect to the server. Please check your internet connection.'));
      }
    });
    on<_AddStoryGuest>((event, emit) async {
      emit(const _Uploading());
      try {
        final result = await datasource.addNewStoryGuest(
            event.bytes, event.fileName, event.description);
        result.fold(
          (l) => emit(_Error(l)),
          (r) => emit(_Uploaded(r)),
        );
      } catch (e) {
        debugPrint('$e');
        emit(const _Error(
            'Failed to connect to the server. Please check your internet connection.'));
      }
    });
  }

  Future<Uint8List> compressImage(List<int> bytes) async {
    int imageLength = bytes.length;
    if (imageLength < 1000000) return Uint8List.fromList(bytes);

    final img.Image image = img.decodeImage(Uint8List.fromList(bytes))!;
    int compressQuality = 70;

    return img.encodeJpg(image, quality: compressQuality);
  }

  Future<List<int>> resizeImage(List<int> bytes) async {
    int imageLength = bytes.length;
    if (imageLength < 1000000) return bytes;

    final img.Image image = img.decodeImage(Uint8List.fromList(bytes))!;
    bool isWidthMoreTaller = image.width > image.height;
    int imageTall = isWidthMoreTaller ? image.width : image.height;
    double compressTall = 1;
    int length = imageLength;
    List<int> newByte = bytes;

    do {
      compressTall -= 0.1;

      final newImage = img.copyResize(
        image,
        width: isWidthMoreTaller ? (imageTall * compressTall).toInt() : null,
        height: !isWidthMoreTaller ? (imageTall * compressTall).toInt() : null,
      );

      length = newImage.length;
      if (length < 1000000) {
        newByte = img.encodeJpg(newImage);
      }
    } while (length > 1000000);

    return newByte;
  }
}
