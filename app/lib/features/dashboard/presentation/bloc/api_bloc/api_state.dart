part of 'api_bloc.dart';

@freezed
abstract class ApiState with _$ApiState {
  const factory ApiState({
    required ApiStateType type,
    TillModel? tillModel,
  }) = _ApiState;
}

@freezed
abstract class ApiStateType with _$ApiStateType {
  const factory ApiStateType.initial() = _Initial;
  const factory ApiStateType.loadingInProgress() = _LoadingInProgress;
  const factory ApiStateType.loadingSuccess() = _LoadingSuccess;
  const factory ApiStateType.loadingFailed(Failure failure) = _LoadingFailed;
}
