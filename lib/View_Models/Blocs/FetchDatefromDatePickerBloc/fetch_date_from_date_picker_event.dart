part of 'fetch_date_from_date_picker_bloc.dart';

@immutable
sealed class FetchDateFromDatePickerEvent {
  const FetchDateFromDatePickerEvent();
}

class FetchCurrentDateFromDatePickerEvent extends FetchDateFromDatePickerEvent {
  final DateTime currentDateTime;

  const FetchCurrentDateFromDatePickerEvent({required this.currentDateTime});
}
