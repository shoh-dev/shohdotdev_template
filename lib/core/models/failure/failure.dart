import 'dart:io';

import 'package:dio/dio.dart';

class Failure {
  final String message;
  final String? code;
  final StackTrace? stackTrace;

  const Failure(this.message, {this.code, this.stackTrace});

  factory Failure.exception(dynamic e, StackTrace st) {
    Failure handleDioException(DioException e) {
      return Failure(
        e.message ?? "Unknown error",
        code: "unknown",
        stackTrace: e.stackTrace,
      );
    }

    Failure switcher() {
      return switch (e) {
        SocketException _ => Failure("No internet connection",
            code: 'no_internet', stackTrace: st),
        FormatException _ => Failure(
            e.message.toString(),
          ),
        TypeError _ => Failure(
            e.toString(),
            stackTrace: e.stackTrace,
          ),
        DioException _ => handleDioException(e),

        ///Keep handling exceptions here
        _ => Failure(e.toString()),
      };
    }

    return switcher();
  }

  @override
  int get hashCode {
    return message.hashCode ^ code.hashCode ^ stackTrace.hashCode;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Failure &&
        other.message == message &&
        other.code == code &&
        other.stackTrace == stackTrace;
  }

  @override
  String toString() {
    return 'Failure(message: $message, code: $code)';
  }
}
