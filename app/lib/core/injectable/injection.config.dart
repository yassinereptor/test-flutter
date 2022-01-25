// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i6;
import 'package:logger/logger.dart' as _i10;

import '../../features/dashboard/presentation/bloc/api_bloc/api_bloc.dart'
    as _i9;
import '../data/datasources/api_remote_source.dart' as _i3;
import '../data/repositories/api_repository.dart' as _i8;
import '../domain/repositories/i_api_repository.dart' as _i7;
import '../network/network_info.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.IApiRemoteDataSource>(
      () => _i3.ApiRemoteDataSource(get<_i4.Dio>()));
  gh.lazySingleton<_i5.INetworkInfo>(
      () => _i5.NetworkInfo(get<_i6.InternetConnectionChecker>()));
  gh.factory<_i7.IApiRepository>(() => _i8.ApiRepository(
      get<_i3.IApiRemoteDataSource>(), get<_i5.INetworkInfo>()));
  gh.factory<_i9.ApiBloc>(
      () => _i9.ApiBloc(get<_i7.IApiRepository>(), get<_i10.Logger>()));
  return get;
}
