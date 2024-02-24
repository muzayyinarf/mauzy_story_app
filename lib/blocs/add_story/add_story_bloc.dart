import 'package:mauzy_story_app/core.dart';

part 'add_story_event.dart';
part 'add_story_state.dart';
part 'add_story_bloc.freezed.dart';

class AddStoryBloc extends Bloc<AddStoryEvent, AddStoryState> {
  final ApiService datasource;
  AddStoryBloc(this.datasource) : super(AddStoryState.initial()) {
    on<_SetImage>((event, emit) async {
      emit(_AddStoryState(
          imagePath: event.imagePath, imageFile: event.imageFile));
    });
    on<_ClearImage>((event, emit) async {
      emit(const _AddStoryState(imagePath: null, imageFile: null));
    });
  }
}
