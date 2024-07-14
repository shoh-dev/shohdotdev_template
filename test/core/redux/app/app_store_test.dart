import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:redux/redux.dart';
import 'package:shohdotdev_template/core/models/result/result.dart';
import 'package:shohdotdev_template/core/redux/app/app_state.dart';
import 'package:shohdotdev_template/core/redux/states/ip_state/model/model.dart';

import '../../../dummy_data.dart';

class MockStore extends Mock implements Store<AppState> {}

void main() {
  late MockStore store;
  setUpAll(() {
    store = MockStore();
  });

  group("check 'AppStore' functions", () {
    test("should get store", () {
      final appStore = store;
      expect(appStore, isA<Store<AppState>>());
    });

    test("should get state", () {
      when(() => store.state).thenReturn(AppState.initial());

      final state = store.state;
      expect(state, isA<AppState>());
    });

    test("should get ipState", () {
      when(() => store.state).thenReturn(AppState.initial());

      final ipState = store.state.ipState;
      expect(ipState, isA<IpState>());
    });

    test("should get ipState.ip 'ResultNone'", () {
      when(() => store.state).thenReturn(AppState.initial());

      final ip = store.state.ipState.ip;
      expect(ip, equals(const ResultNone<String>()));
    });

    test("should get ipState.ip 'ResultLoading'", () {
      when(() => store.state).thenReturn(AppState.initial().copyWith(
          ipState:
              IpState.initial().copyWith(ip: const ResultLoading<String>())));

      final ip = store.state.ipState.ip;
      expect(ip, equals(const ResultLoading<String>()));
    });

    test("should get ipState.ip 'ResultData'", () {
      when(() => store.state).thenReturn(AppState.initial().copyWith(
          ipState: IpState.initial()
              .copyWith(ip: const ResultData<String>(DummyData.ip))));

      final ip = store.state.ipState.ip;
      expect(ip, equals(const ResultData<String>(DummyData.ip)));
    });

    test("should get ipState.ip 'ResultFailure'", () {
      when(() => store.state).thenReturn(AppState.initial().copyWith(
          ipState: IpState.initial()
              .copyWith(ip: const ResultFailure<String>("error"))));

      final ip = store.state.ipState.ip;
      expect(ip, equals(const ResultFailure<String>("error")));
    });
  });
}
