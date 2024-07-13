import 'package:flutter_test/flutter_test.dart';
import 'package:shohdotdev_template/core/core.dart';

void main() {
  setUpAll(() async {
    return await Injection.setup();
  });

  group("check 'RestApiClient' functions", () {
    test("check if dio has interceptors", () {
      final restApiClient = Injection.restApiClient;
      expect(restApiClient.dio.interceptors, isNotEmpty);
    });

    test("check if dio has base url", () {
      final restApiClient = Injection.restApiClient;
      expect(restApiClient.dio.options.baseUrl, Injection.env.apiBaseUrl);
    });
  });
}
