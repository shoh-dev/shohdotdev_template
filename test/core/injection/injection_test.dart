import 'package:flutter_test/flutter_test.dart';

import 'package:shohdotdev_template/core/core.dart';

void main() {
  setUpAll(() async {
    return await Injection.setup(isTesting: true);
  });

  group("checking if all singletons are registered", () {
    test("check if 'Env' is registered", () {
      expect(Injection.env, isA<Env>());
    });

    test("check if 'RestApiClient' is registered", () {
      expect(Injection.restApiClient, isA<RestApiClient>());
    });
  });
}
