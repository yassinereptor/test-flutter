import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:popina_flutter_test/core/data/datasources/api_remote_source.dart';
import 'package:popina_flutter_test/core/data/models/till_model.dart';
import 'package:popina_flutter_test/core/domain/repositories/i_api_repository.dart';
import 'package:popina_flutter_test/core/errors/exceptions/exception.dart';
import 'package:popina_flutter_test/core/errors/failures/failure.dart';
import 'package:popina_flutter_test/core/network/network_info.dart';

@Injectable(as: IApiRepository)
class ApiRepository implements IApiRepository {
  final IApiRemoteDataSource _apiRemoteDataSource;
  final INetworkInfo _networkInfo;

  ApiRepository(
    this._apiRemoteDataSource,
    this._networkInfo,
  );

  @override
  Future<Either<Failure, TillModel>> getData() async {
    try {
      final isConnected = await _networkInfo.isConnected;
      if (isConnected == false) return Left(NetworkFailure());
      final response = await _apiRemoteDataSource.getData();
      return Right(response);
    } on ServerExeption catch (e) {
      return Left(ServerFailure(
        status: e.status!,
        message: e.message!,
      ));
    }
  }

}
