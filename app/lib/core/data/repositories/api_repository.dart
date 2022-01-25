import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:popina_flutter_test/core/data/datasources/api_remote_source.dart';
import 'package:popina_flutter_test/core/data/models/till_model.dart';
import 'package:popina_flutter_test/core/domain/repositories/i_api_repository.dart';
import 'package:popina_flutter_test/core/errors/exceptions/exception.dart';
import 'package:popina_flutter_test/core/errors/failures/failure.dart';
import 'package:popina_flutter_test/core/network/network_info.dart';

// Api respository
@Injectable(as: IApiRepository)
class ApiRepository implements IApiRepository {
  final IApiRemoteDataSource _apiRemoteDataSource;
  final INetworkInfo _networkInfo;

  ApiRepository(
    this._apiRemoteDataSource,
    this._networkInfo,
  );

  // Error managment by returning Either object to get either failure or data in case of success
  @override
  Future<Either<Failure, TillModel>> getData() async {
    try {
      // Check network
      final isConnected = await _networkInfo.isConnected;
      if (isConnected == false) return Left(NetworkFailure());
      final response = await _apiRemoteDataSource.getData();
      // Return data in case of success
      return Right(response);
    } on ServerException catch (e) {
      // Return ServerFailure in case of server error
      return Left(ServerFailure(
        status: e.status!,
        message: e.message!,
      ));
    }
  }

}
