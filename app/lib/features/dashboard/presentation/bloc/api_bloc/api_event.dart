part of 'api_bloc.dart';

@freezed
abstract class ApiEvent with _$ApiEvent {
  // One event needed to get data from API
  factory ApiEvent.getData() = _GetData;
}
