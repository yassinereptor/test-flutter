import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:popina_flutter_test/core/data/models/till_model.dart';
import 'package:popina_flutter_test/core/errors/exceptions/exception.dart';

abstract class IApiRemoteDataSource {

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
      // Get data with dio http client
      final response = await _dio.get(
        dotenv.env["API_LINK"]!
      );
      // In case of error code no equal 200 OK
      if (response.statusCode != 200)
        // throw server exception
        throw ServerException(status: response.statusCode!, message: response.statusMessage!);
      // In case of success conver data to Map and then conver it to TillModle Object
      return TillModel.fromJson(json.decode(response.data));
    } on DioError catch (e) {
        // throw server exception
      throw ServerException(
        status: e.hashCode,
        message: e.message,
      );
    }
  }

}
