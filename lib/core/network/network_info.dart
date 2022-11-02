import 'package:data_connection_checker_tv/data_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final DataConnectionChecker connectionChecker;

  NetworkInfoImpl(this.connectionChecker);

  // @override
  // // TODO: implement isConnected
  // Future<bool> get isConnected async => await connectionChecker.hasConnection;
  @override
  Future<bool> get isConnected {
    connectionChecker.hasConnection;
    return Future.value(true);
  }
}