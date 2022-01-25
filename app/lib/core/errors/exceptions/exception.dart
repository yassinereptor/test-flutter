// Server Exception
class ServerException implements Exception {
  final int? status;
  final String? message;

  ServerException({this.status, this.message});
}

// Network Exception
class NetworkException implements Exception {}
