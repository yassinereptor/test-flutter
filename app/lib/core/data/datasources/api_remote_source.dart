import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:popina_flutter_test/core/data/models/till_model.dart';
import 'package:popina_flutter_test/core/errors/exceptions/exception.dart';

abstract class IApiRemoteDataSource {
  /// Calls the https://preprod.men.gov.ma/identity/GetToken endpoint when dev envirenment.
  ///
  /// Throws a [ServerExeption] for all error codes.

  Future<TillModel> getData();
}

@Injectable(as: IApiRemoteDataSource)
class ApiRemoteDataSource
    implements IApiRemoteDataSource {
  final Dio _dio;

  ApiRemoteDataSource(
    this._dio,
    );

  @override
  Future<TillModel> getData() async {
    try {
      final response = await _dio.get(
        dotenv.env["API_LINK"]!
      );
      return TillModel.fromJson(response.data);
    } on DioError catch (e) {
      throw ServerExeption(
        status: e.hashCode,
        message: e.message,
      );
    }
  }

}
