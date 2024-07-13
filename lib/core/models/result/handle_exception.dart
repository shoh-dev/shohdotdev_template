import 'dart:io';

import 'package:dio/dio.dart';

import 'result.dart';

class HandleException<T> {
  const HandleException();

  ResultFailure<T> _handleDioException(DioException e) {
    return ResultFailure<T>(
      e.message ?? "Unknown error",
      code: "unknown",
      stackTrace: e.stackTrace,
    );
  }

  ResultFailure<T> _handleTypeException(TypeError e) {
    return ResultFailure<T>(
      e.toString(),
      stackTrace: e.stackTrace,
    );
  }

  ResultFailure<T> _handleFormatException(FormatException e, StackTrace st) {
    return ResultFailure<T>(
      e.message.toString(),
      stackTrace: st,
    );
  }

  ResultFailure<T> _handleSocketException(SocketException e, StackTrace st) {
    return ResultFailure<T>("No internet connection",
        code: 'no_internet', stackTrace: st);
  }

  ResultFailure<T> _handleException(dynamic e, StackTrace st) {
    return ResultFailure(
      e.toString().replaceAll("Exception: ", ""),
      stackTrace: st,
    );
  }

  ResultFailure<T> exception(dynamic e, StackTrace st) {
    ResultFailure<T> switcher() {
      return switch (e) {
        SocketException _ => _handleSocketException(e, st),
        FormatException _ => _handleFormatException(e, st),
        TypeError _ => _handleTypeException(e),
        DioException _ => _handleDioException(e),

        //! Keep handling exceptions above this line
        Exception _ => _handleException(e, st),
        _ => ResultFailure(e.toString(), stackTrace: st),
      };
    }

    return switcher();
  }
}
