import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:redux/redux.dart';
import 'package:shohdotdev_template/core/models/failure/failure.dart';
import 'package:shohdotdev_template/core/redux/app/app_state.dart';
import 'package:shohdotdev_template/core/redux/app/models/redux_state.dart';
import 'package:shohdotdev_template/core/redux/ip_state/model/model.dart';

import '../../../dummy_data.dart';
@GenerateNiceMocks([MockSpec<Store<AppState>>()])
import 'app_store_test.mocks.dart';

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
      final state = store.state;
      expect(state, isA<AppState>());
    });

    test("should get ipState", () {
      when(store.state).thenReturn(AppState.initial());

      final ipState = store.state.ipState;
      expect(ipState, isA<IpState>());
    });

    test("should get ipState.ip 'ReduxStateInitial'", () {
      when(store.state).thenReturn(AppState.initial());

      final ip = store.state.ipState.ip;
      expect(ip, equals(const ReduxStateInitial<String>()));
    });

    test("should get ipState.ip 'ReduxStateLoading'", () {
      when(store.state).thenReturn(AppState.initial().copyWith(
          ipState: IpState.initial()
              .copyWith(ip: const ReduxStateLoading<String>())));

      final ip = store.state.ipState.ip;
      expect(ip, equals(const ReduxStateLoading<String>()));
    });

    test("should get ipState.ip 'ReduxStateSuccess'", () {
      when(store.state).thenReturn(AppState.initial().copyWith(
          ipState: IpState.initial()
              .copyWith(ip: const ReduxStateSuccess<String>(DummyData.ip))));

      final ip = store.state.ipState.ip;
      expect(ip, equals(const ReduxStateSuccess<String>(DummyData.ip)));
    });

    test("should get ipState.ip 'ReduxStateFailure'", () {
      when(store.state).thenReturn(AppState.initial().copyWith(
          ipState: IpState.initial().copyWith(
              ip: const ReduxStateFailure<String>(Failure("error")))));

      final ip = store.state.ipState.ip;
      expect(ip, equals(const ReduxStateFailure<String>(Failure("error"))));
    });
  });
}
