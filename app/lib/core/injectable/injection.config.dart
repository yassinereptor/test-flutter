// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;
import 'package:logger/logger.dart' as _i6;

import '../../features/dashboard/presentation/bloc/api_bloc/api_bloc.dart'
    as _i10;
import '../data/datasources/api_remote_source.dart' as _i4;
import '../data/repositories/api_repository.dart' as _i9;
import '../domain/repositories/i_api_repository.dart' as _i8;
import '../modules/dio_module.dart' as _i11;
import '../modules/modules.dart' as _i12;
import '../network/network_info.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final iDioModule = _$IDioModule();
  final iModules = _$IModules();
  gh.lazySingleton<_i3.Dio>(() => iDioModule.dio());
  gh.factory<_i4.IApiRemoteDataSource>(
      () => _i4.ApiRemoteDataSource(get<_i3.Dio>()));
  gh.factory<_i5.InternetConnectionChecker>(
      () => iModules.dataConnectionChecker);
  gh.factory<_i6.Logger>(() => iModules.logger);
  gh.lazySingleton<_i7.INetworkInfo>(
      () => _i7.NetworkInfo(get<_i5.InternetConnectionChecker>()));
  gh.factory<_i8.IApiRepository>(() => _i9.ApiRepository(
      get<_i4.IApiRemoteDataSource>(), get<_i7.INetworkInfo>()));
  gh.factory<_i10.ApiBloc>(
      () => _i10.ApiBloc(get<_i8.IApiRepository>(), get<_i6.Logger>()));
  return get;
}

class _$IDioModule extends _i11.IDioModule {}

class _$IModules extends _i12.IModules {}
