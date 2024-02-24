part of 'upload_bloc.dart';

@freezed
class UploadState with _$UploadState {
  const factory UploadState.initial() = _Initial;
  const factory UploadState.uploading() = _Uploading;
  const factory UploadState.uploaded(CommonResponseModel model) = _Uploaded;
  const factory UploadState.compressingImage() = _CompressingImage;
  const factory UploadState.compressedImage(List<int> compressedBytes) =
      _CompressedImage;
  const factory UploadState.resizingImage() = _ResizingImage;
  const factory UploadState.resizedImage(List<int> resizedBytes) =
      _ResizedImage;
  const factory UploadState.error(String message) = _Error;
}
