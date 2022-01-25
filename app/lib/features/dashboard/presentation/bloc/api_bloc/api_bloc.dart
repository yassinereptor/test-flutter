import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:popina_flutter_test/core/data/models/till_model.dart';
import 'package:popina_flutter_test/core/domain/repositories/i_api_repository.dart';
import 'package:popina_flutter_test/core/errors/failures/failure.dart';
import 'package:logger/logger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'api_bloc.freezed.dart';
part 'api_event.dart';
part 'api_state.dart';

@injectable
class ApiBloc extends Bloc<ApiEvent, ApiState> {
  final IApiRepository _apiRepository;
  final Logger _logger;

  ApiBloc(
    this._apiRepository,
    this._logger,
  ) : super(ApiState(
            type: ApiStateType.initial()));

  @override
  Stream<ApiState> mapEventToState(ApiEvent gEvent) async* {
    yield* gEvent.when(
      getData: () => _getDataHandler(),
    );
  }

  @override
  void onEvent(ApiEvent event) {
    _logger.d(event.toString());
    super.onEvent(event);
  }

  @override
  void onChange(Change<ApiState> change) {
    _logger.d(change.nextState.toString());
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    _logger.e(error);
    super.onError(error, stackTrace);
  }

  Stream<ApiState> _getDataHandler() async* {
    Failure? failure;
    TillModel? tillModel;

    yield state.copyWith(type: ApiStateType.loadingInProgress());
    (await _apiRepository
        .getData()).fold((f) {
      failure = f;
    }, (value) {
      tillModel = value;
    });
    if (failure != null)
      yield state.copyWith(type: ApiStateType.loadingFailed(failure!));
    else 
      yield state.copyWith(
                type: ApiStateType.loadingSuccess(),
                tillModel: tillModel,
              );
  }

}
