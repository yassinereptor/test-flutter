class ServerExeption implements Exception {
  final int? status;
  final String? message;

  ServerExeption({this.status, this.message});
}

class NetworkExeption implements Exception {}
