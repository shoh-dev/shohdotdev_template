import 'package:flutter_test/flutter_test.dart';
import 'package:shohdotdev_template/core/redux/states.dart';

void main() {
  late final AppState appState;
  setUpAll(() {
    appState = AppState.initial();
  });
  group("AppState test", () {
    test("AppState should be type of AppState", () {
      expect(appState, isA<AppState>());
    });

    test("AppState.ipState should be type of IpState", () {
      expect(appState.ipState, isA<IpState>());
    });
  });
}
