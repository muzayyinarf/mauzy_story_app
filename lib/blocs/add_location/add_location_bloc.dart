import 'package:mauzy_story_app/core.dart';

part 'add_location_event.dart';
part 'add_location_state.dart';
part 'add_location_bloc.freezed.dart';

class AddLocationBloc extends Bloc<AddLocationEvent, AddLocationState> {
  AddLocationBloc() : super(AddLocationState.initial()) {
    on<_SetLocation>((event, emit) {
      emit(AddLocationState(
          lat: event.lat, lon: event.lon, address: event.address));
    });
    on<_ClearLocation>((event, emit) {
      emit(AddLocationState.initial());
    });
  }
}
