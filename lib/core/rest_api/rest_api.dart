import 'package:dio/dio.dart';
import 'package:shohdotdev_template/core/core.dart';
import 'package:shohdotdev_template/core/rest_api/interceptors.dart';
import 'package:shohdotdev_template/core/rest_api/rest_api_repo.dart';
import 'package:shohdotdev_template/utils/logger.dart';

class RestApiClient implements RestApiRepo {
  RestApiClient(this.env);

  final Env env;

  late final Dio _dio;

  // Getter to return the API client
  Dio get dio => _dio;

  late final RestApiInterceptors _interceptors;

  //Create a method to initialize the API client
  @override
  void init() {
    _interceptors = RestApiInterceptors(env);

    final baseUrl = env.apiBaseUrl;

    //Create a new instance of Dio
    _dio = Dio();

    //Set the base url
    _dio.options.baseUrl = baseUrl;

    //Set the request interceptors
    _dio.interceptors.add(_interceptors.tokenRenewInterceptor());
    _dio.interceptors.add(_interceptors.cancelInterceptor());
    // _dio.interceptors.add(_interceptors.logInterceptor());
    _dio.interceptors.add(_interceptors.tokenInjection());

    logger("API Client initialized", "API Client");
  }
}
