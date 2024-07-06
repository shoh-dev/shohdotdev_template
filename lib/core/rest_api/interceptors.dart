import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:shohdotdev_template/core/env/env.dart';
import 'package:shohdotdev_template/utils/logger.dart';

class RestApiInterceptors {
  RestApiInterceptors(this.env);

  final Env env;

  // CANCEL INTERCEPTOR
  CancelToken _cancelToken = CancelToken();

  // CANCEL INTERCEPTOR

  // DUPLICATE REQUEST INTERCEPTOR
  //List of currently active requests, while requesting add to the list so that we avoid double requests
  final List<String> _activeRequests = [];

  // DUPLICATE REQUEST INTERCEPTOR

  void cancelLastRequest() {
    if (_cancelToken.isCancelled) return;
    if (_activeRequests.isEmpty) return;
    _cancelToken.cancel("cancelled api call by force");
    _cancelToken = CancelToken();
    _activeRequests.clear();
  }

  Interceptor cancelInterceptor() => InterceptorsWrapper(
        onRequest: (options, handler) {
          options.cancelToken = _cancelToken;
          handler.next(options); //continue
        },
      );

  Interceptor logInterceptor() =>
      InterceptorsWrapper(onRequest: (RequestOptions options, handler) async {
        String headers = "";
        options.headers.forEach((key, value) {
          headers += "| $key: $value";
        });
        logger(
            "| [API_Request]: ${options.method} ${options.baseUrl}${options.path}");

        if (options.queryParameters.isNotEmpty) {
          logger("| [API_Request_Query]: ${options.queryParameters}");
        }
        if (options.data != null) {
          logger("| [API_Data]: ${options.data!.toString()}");
        }
        logger("| [API_Headers]: $headers");

        handler.next(options); //continue
      }, onResponse: (Response response, handler) async {
        try {
          bool skip = false;
          String data = response.data.toString();

          if (data.length > 1200) {
            data = data.substring(0, 1200);
            skip = true;
          }
          if (skip) {
            logger(
                "| [API_Response_${response.requestOptions.path}] [code ${response.statusCode}]: $data"); //:
            handler.next(response);
            return;
          }
          try {
            logger(jsonEncode(response.data),
                "API_Response_${response.requestOptions.path}");
          } catch (e) {
            logger(
                "| [API_Response_${response.requestOptions.path}] [code ${response.statusCode}]: $data"); //:
          }
          handler.next(response);
        } catch (e) {
          bool skip = false;
          String data = response.data.toString();
          if (response.requestOptions.path == "/fe/lists") skip = true;

          if (!skip) {
            logger(
                "| [API_Response_${response.requestOptions.path}] [code ${response.statusCode}]: $data"); //:
          }
          handler.next(response);
        }
      }, onError: (DioError error, handler) async {
        logger("| [API_Error]: ${error.error}: ${error.response?.toString()}");
        handler.next(error); //continue
      });

  Interceptor tokenRenewInterceptor() => InterceptorsWrapper(
        onRequest: (options, handler) async {
          handler.next(options); //continue
        },
        onError: (e, handler) async {
          try {
            // Check for status code you need to handle
            if (e.response?.statusCode == 401) {
              if (e.response?.data is Map<String, dynamic>) {
                //if status code is not enough, check the response data
                //Renew token by calling the refresh token endpoint
                // final res =
                // await dispatch<TokenMd>(const GetRefreshTokenAction());
//
                // if (res.isLeft) {
                // e.requestOptions.headers['Authorization'] =
                // ' Bearer ${res.left.accessToken}';
                // return handler.resolve(
                // await deps.dioClient.dio.fetch(e.requestOptions));
                // }
                // } else if (e.response?.data?['error_description']
                // .toString()
                // .contains("The access token provided is invalid") ==
                // true) {
                //// logout
                // deps.navigation.loginState.logout();
              }
            }
            return handler.next(e);
          } on DioException catch (err) {
            logger(err.stackTrace, "DioException");
          } catch (err) {
            logger(err.runtimeType, "Exception");
          }
          return handler.next(e);
        },
        onResponse: (e, handler) {
          handler.next(e); //continue
        },
      );

  Interceptor tokenInjection() => InterceptorsWrapper(
        onRequest: (options, handler) {
          //todo: get from secore db
          final String accessToken = "";
          final bool hasAccessToken = accessToken.isNotEmpty;
          if (hasAccessToken) {
            // adding bearer token
            if (accessToken.isNotEmpty) {
              options.headers.addAll({"Authorization": "Bearer $accessToken"});
            }
          }
          handler.next(options); //continue
        },
        onError: (e, handler) {
          handler.next(e); //continue
        },
        onResponse: (e, handler) {
          handler.next(e); //continue
        },
      );
}
