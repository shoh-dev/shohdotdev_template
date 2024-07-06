import 'dart:io';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String message;
  final String? code;
  final StackTrace? stackTrace;

  const Failure({required this.message, this.code, this.stackTrace});

  @override
  List<Object> get props => [message];

  factory Failure.exception(dynamic e, StackTrace st) {
    Failure handleDioException(DioException e) {
      return Failure(
        message: e.message ?? "Unknown error",
        code: "unknown",
        stackTrace: e.stackTrace,
      );
    }

    Failure switcher() {
      return switch (e) {
        SocketException _ => Failure(
            message: "No internet connection",
            code: 'no_internet',
            stackTrace: st),
        FormatException _ => Failure(
            message: e.message.toString(),
          ),
        TypeError _ => Failure(
            message: e.toString(),
            stackTrace: e.stackTrace,
          ),
        DioException _ => handleDioException(e),

        ///Keep handling exceptions here
        _ => Failure(message: e.toString()),
      };
    }

    return switcher();
  }
}
