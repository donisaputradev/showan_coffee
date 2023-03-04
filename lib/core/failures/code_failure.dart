import 'package:showan_coffee/core/failures/base.dart';

class CodeFailure extends Failure {
  const CodeFailure({required String message, Object? code})
      : super(message: message, code: code);
}
