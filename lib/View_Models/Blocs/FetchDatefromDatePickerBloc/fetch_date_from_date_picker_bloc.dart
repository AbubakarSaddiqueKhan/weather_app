import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'fetch_date_from_date_picker_event.dart';
part 'fetch_date_from_date_picker_state.dart';

class FetchDateFromDatePickerBloc
    extends Bloc<FetchDateFromDatePickerEvent, FetchDateFromDatePickerState> {
  FetchDateFromDatePickerBloc() : super(FetchDateFromDatePickerInitialState()) {
    on<FetchCurrentDateFromDatePickerEvent>(
        _mapFetchDateFromDatePickerEventToStates);
  }

  FutureOr<void> _mapFetchDateFromDatePickerEventToStates(
      FetchCurrentDateFromDatePickerEvent event,
      Emitter<FetchDateFromDatePickerState> emit) {
    emit(FetchDateFromDatePickerLoadingState());
    try {
      emit(FetchDateFromDatePickerLoadedState(
          date: event.currentDateTime.day,
          month: event.currentDateTime.month,
          year: event.currentDateTime.year));
    } catch (e) {
      emit(FetchDateFromDatePickerErrorState());
    }
  }
}
