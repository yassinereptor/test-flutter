// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'api_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ApiEventTearOff {
  const _$ApiEventTearOff();

  _GetData getData() {
    return _GetData();
  }
}

/// @nodoc
const $ApiEvent = _$ApiEventTearOff();

/// @nodoc
mixin _$ApiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetData value) getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetData value)? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiEventCopyWith<$Res> {
  factory $ApiEventCopyWith(ApiEvent value, $Res Function(ApiEvent) then) =
      _$ApiEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ApiEventCopyWithImpl<$Res> implements $ApiEventCopyWith<$Res> {
  _$ApiEventCopyWithImpl(this._value, this._then);

  final ApiEvent _value;
  // ignore: unused_field
  final $Res Function(ApiEvent) _then;
}

/// @nodoc
abstract class _$GetDataCopyWith<$Res> {
  factory _$GetDataCopyWith(_GetData value, $Res Function(_GetData) then) =
      __$GetDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetDataCopyWithImpl<$Res> extends _$ApiEventCopyWithImpl<$Res>
    implements _$GetDataCopyWith<$Res> {
  __$GetDataCopyWithImpl(_GetData _value, $Res Function(_GetData) _then)
      : super(_value, (v) => _then(v as _GetData));

  @override
  _GetData get _value => super._value as _GetData;
}

/// @nodoc

class _$_GetData implements _GetData {
  _$_GetData();

  @override
  String toString() {
    return 'ApiEvent.getData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
  }) {
    return getData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetData value) getData,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetData value)? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _GetData implements ApiEvent {
  factory _GetData() = _$_GetData;
}

/// @nodoc
class _$ApiStateTearOff {
  const _$ApiStateTearOff();

  _ApiState call({required ApiStateType type, TillModel? tillModel}) {
    return _ApiState(
      type: type,
      tillModel: tillModel,
    );
  }
}

/// @nodoc
const $ApiState = _$ApiStateTearOff();

/// @nodoc
mixin _$ApiState {
  ApiStateType get type => throw _privateConstructorUsedError;
  TillModel? get tillModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiStateCopyWith<ApiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiStateCopyWith<$Res> {
  factory $ApiStateCopyWith(ApiState value, $Res Function(ApiState) then) =
      _$ApiStateCopyWithImpl<$Res>;
  $Res call({ApiStateType type, TillModel? tillModel});

  $ApiStateTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$ApiStateCopyWithImpl<$Res> implements $ApiStateCopyWith<$Res> {
  _$ApiStateCopyWithImpl(this._value, this._then);

  final ApiState _value;
  // ignore: unused_field
  final $Res Function(ApiState) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? tillModel = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ApiStateType,
      tillModel: tillModel == freezed
          ? _value.tillModel
          : tillModel // ignore: cast_nullable_to_non_nullable
              as TillModel?,
    ));
  }

  @override
  $ApiStateTypeCopyWith<$Res> get type {
    return $ApiStateTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$ApiStateCopyWith<$Res> implements $ApiStateCopyWith<$Res> {
  factory _$ApiStateCopyWith(_ApiState value, $Res Function(_ApiState) then) =
      __$ApiStateCopyWithImpl<$Res>;
  @override
  $Res call({ApiStateType type, TillModel? tillModel});

  @override
  $ApiStateTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$ApiStateCopyWithImpl<$Res> extends _$ApiStateCopyWithImpl<$Res>
    implements _$ApiStateCopyWith<$Res> {
  __$ApiStateCopyWithImpl(_ApiState _value, $Res Function(_ApiState) _then)
      : super(_value, (v) => _then(v as _ApiState));

  @override
  _ApiState get _value => super._value as _ApiState;

  @override
  $Res call({
    Object? type = freezed,
    Object? tillModel = freezed,
  }) {
    return _then(_ApiState(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ApiStateType,
      tillModel: tillModel == freezed
          ? _value.tillModel
          : tillModel // ignore: cast_nullable_to_non_nullable
              as TillModel?,
    ));
  }
}

/// @nodoc

class _$_ApiState implements _ApiState {
  const _$_ApiState({required this.type, this.tillModel});

  @override
  final ApiStateType type;
  @override
  final TillModel? tillModel;

  @override
  String toString() {
    return 'ApiState(type: $type, tillModel: $tillModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApiState &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.tillModel, tillModel) ||
                const DeepCollectionEquality()
                    .equals(other.tillModel, tillModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(tillModel);

  @JsonKey(ignore: true)
  @override
  _$ApiStateCopyWith<_ApiState> get copyWith =>
      __$ApiStateCopyWithImpl<_ApiState>(this, _$identity);
}

abstract class _ApiState implements ApiState {
  const factory _ApiState({required ApiStateType type, TillModel? tillModel}) =
      _$_ApiState;

  @override
  ApiStateType get type => throw _privateConstructorUsedError;
  @override
  TillModel? get tillModel => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ApiStateCopyWith<_ApiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ApiStateTypeTearOff {
  const _$ApiStateTypeTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadingInProgress loadingInProgress() {
    return const _LoadingInProgress();
  }

  _LoadingSuccess loadingSuccess() {
    return const _LoadingSuccess();
  }

  _LoadingFailed loadingFailed(Failure failure) {
    return _LoadingFailed(
      failure,
    );
  }
}

/// @nodoc
const $ApiStateType = _$ApiStateTypeTearOff();

/// @nodoc
mixin _$ApiStateType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function() loadingSuccess,
    required TResult Function(Failure failure) loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function()? loadingSuccess,
    TResult Function(Failure failure)? loadingFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingInProgress value) loadingInProgress,
    required TResult Function(_LoadingSuccess value) loadingSuccess,
    required TResult Function(_LoadingFailed value) loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingInProgress value)? loadingInProgress,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiStateTypeCopyWith<$Res> {
  factory $ApiStateTypeCopyWith(
          ApiStateType value, $Res Function(ApiStateType) then) =
      _$ApiStateTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$ApiStateTypeCopyWithImpl<$Res> implements $ApiStateTypeCopyWith<$Res> {
  _$ApiStateTypeCopyWithImpl(this._value, this._then);

  final ApiStateType _value;
  // ignore: unused_field
  final $Res Function(ApiStateType) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ApiStateTypeCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ApiStateType.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function() loadingSuccess,
    required TResult Function(Failure failure) loadingFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function()? loadingSuccess,
    TResult Function(Failure failure)? loadingFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingInProgress value) loadingInProgress,
    required TResult Function(_LoadingSuccess value) loadingSuccess,
    required TResult Function(_LoadingFailed value) loadingFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingInProgress value)? loadingInProgress,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ApiStateType {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingInProgressCopyWith<$Res> {
  factory _$LoadingInProgressCopyWith(
          _LoadingInProgress value, $Res Function(_LoadingInProgress) then) =
      __$LoadingInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingInProgressCopyWithImpl<$Res>
    extends _$ApiStateTypeCopyWithImpl<$Res>
    implements _$LoadingInProgressCopyWith<$Res> {
  __$LoadingInProgressCopyWithImpl(
      _LoadingInProgress _value, $Res Function(_LoadingInProgress) _then)
      : super(_value, (v) => _then(v as _LoadingInProgress));

  @override
  _LoadingInProgress get _value => super._value as _LoadingInProgress;
}

/// @nodoc

class _$_LoadingInProgress implements _LoadingInProgress {
  const _$_LoadingInProgress();

  @override
  String toString() {
    return 'ApiStateType.loadingInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function() loadingSuccess,
    required TResult Function(Failure failure) loadingFailed,
  }) {
    return loadingInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function()? loadingSuccess,
    TResult Function(Failure failure)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingInProgress value) loadingInProgress,
    required TResult Function(_LoadingSuccess value) loadingSuccess,
    required TResult Function(_LoadingFailed value) loadingFailed,
  }) {
    return loadingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingInProgress value)? loadingInProgress,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadingInProgress implements ApiStateType {
  const factory _LoadingInProgress() = _$_LoadingInProgress;
}

/// @nodoc
abstract class _$LoadingSuccessCopyWith<$Res> {
  factory _$LoadingSuccessCopyWith(
          _LoadingSuccess value, $Res Function(_LoadingSuccess) then) =
      __$LoadingSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingSuccessCopyWithImpl<$Res>
    extends _$ApiStateTypeCopyWithImpl<$Res>
    implements _$LoadingSuccessCopyWith<$Res> {
  __$LoadingSuccessCopyWithImpl(
      _LoadingSuccess _value, $Res Function(_LoadingSuccess) _then)
      : super(_value, (v) => _then(v as _LoadingSuccess));

  @override
  _LoadingSuccess get _value => super._value as _LoadingSuccess;
}

/// @nodoc

class _$_LoadingSuccess implements _LoadingSuccess {
  const _$_LoadingSuccess();

  @override
  String toString() {
    return 'ApiStateType.loadingSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function() loadingSuccess,
    required TResult Function(Failure failure) loadingFailed,
  }) {
    return loadingSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function()? loadingSuccess,
    TResult Function(Failure failure)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingInProgress value) loadingInProgress,
    required TResult Function(_LoadingSuccess value) loadingSuccess,
    required TResult Function(_LoadingFailed value) loadingFailed,
  }) {
    return loadingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingInProgress value)? loadingInProgress,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadingSuccess implements ApiStateType {
  const factory _LoadingSuccess() = _$_LoadingSuccess;
}

/// @nodoc
abstract class _$LoadingFailedCopyWith<$Res> {
  factory _$LoadingFailedCopyWith(
          _LoadingFailed value, $Res Function(_LoadingFailed) then) =
      __$LoadingFailedCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$LoadingFailedCopyWithImpl<$Res>
    extends _$ApiStateTypeCopyWithImpl<$Res>
    implements _$LoadingFailedCopyWith<$Res> {
  __$LoadingFailedCopyWithImpl(
      _LoadingFailed _value, $Res Function(_LoadingFailed) _then)
      : super(_value, (v) => _then(v as _LoadingFailed));

  @override
  _LoadingFailed get _value => super._value as _LoadingFailed;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_LoadingFailed(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_LoadingFailed implements _LoadingFailed {
  const _$_LoadingFailed(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ApiStateType.loadingFailed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingFailed &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LoadingFailedCopyWith<_LoadingFailed> get copyWith =>
      __$LoadingFailedCopyWithImpl<_LoadingFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function() loadingSuccess,
    required TResult Function(Failure failure) loadingFailed,
  }) {
    return loadingFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function()? loadingSuccess,
    TResult Function(Failure failure)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loadingFailed != null) {
      return loadingFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingInProgress value) loadingInProgress,
    required TResult Function(_LoadingSuccess value) loadingSuccess,
    required TResult Function(_LoadingFailed value) loadingFailed,
  }) {
    return loadingFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingInProgress value)? loadingInProgress,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loadingFailed != null) {
      return loadingFailed(this);
    }
    return orElse();
  }
}

abstract class _LoadingFailed implements ApiStateType {
  const factory _LoadingFailed(Failure failure) = _$_LoadingFailed;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadingFailedCopyWith<_LoadingFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
