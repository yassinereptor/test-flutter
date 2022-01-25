import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

// Required by getIt to get global access of logger and dataConnectionChecker without re initialize 
@module
abstract class IModules {
  //injecting third party libraries
  @injectable
  Logger get logger => Logger();

  @injectable
  InternetConnectionChecker get dataConnectionChecker => InternetConnectionChecker();
}
