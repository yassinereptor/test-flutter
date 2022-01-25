part of 'api_bloc.dart';

@freezed
abstract class ApiEvent with _$ApiEvent {
  factory ApiEvent.getData() = _GetData;
}
