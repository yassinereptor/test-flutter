import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:popina_flutter_test/core/data/models/till_model.dart';
import 'package:popina_flutter_test/core/errors/failures/failure.dart';

abstract class IApiRepository {

  Future<Either<Failure?, TillModel>> getData();
}
