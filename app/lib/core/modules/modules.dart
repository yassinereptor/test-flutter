import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@module
abstract class IModules {
  //injecting third party libraries
  @injectable
  Logger get logger => Logger();

  @injectable
  InternetConnectionChecker get dataConnectionChecker => InternetConnectionChecker();
}
