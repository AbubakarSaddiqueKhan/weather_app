part of 'fetch_date_from_date_picker_bloc.dart';

@immutable
sealed class FetchDateFromDatePickerState {
  const FetchDateFromDatePickerState();
}

final class FetchDateFromDatePickerInitialState
    extends FetchDateFromDatePickerState {}

final class FetchDateFromDatePickerLoadingState
    extends FetchDateFromDatePickerState {}

final class FetchDateFromDatePickerLoadedState
    extends FetchDateFromDatePickerState {
  final int date;
  final int month;
  final int year;

  const FetchDateFromDatePickerLoadedState(
      {required this.date, required this.month, required this.year});
}

final class FetchDateFromDatePickerErrorState
    extends FetchDateFromDatePickerState {}
