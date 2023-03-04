import 'package:showan_coffee/core/core.dart';

class ServerFailure extends Failure {
  const ServerFailure({required String message, Object? code})
      : super(message: message, code: code);
}
