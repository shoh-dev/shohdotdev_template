import 'package:flutter_test/flutter_test.dart';
import 'package:shohdotdev_template/core/models/failure/failure.dart';
import 'package:shohdotdev_template/core/redux/app/models/redux_state.dart';

void main() {
  group("'ReduxState' test", () {
    test("ReduxState.initial should be type of ReduxStateInitial", () {
      const initial = ReduxStateInitial();

      expect(initial, isA<ReduxStateInitial>());
    });

    test("ReduxState.loading should be type of ReduxStateLoading", () {
      const loading = ReduxStateLoading();

      expect(loading, isA<ReduxStateLoading>());
    });

    test("ReduxState.success should be type of ReduxStateSuccess", () {
      const success = ReduxStateSuccess("data");

      expect(success, isA<ReduxStateSuccess>());
    });

    test("ReduxState.success data should be equal to 'data'", () {
      const success = ReduxStateSuccess("data");

      expect(success.data, equals("data"));
    });

    test("ReduxState.failure should be type of ReduxStateFailure", () {
      const failure = ReduxStateFailure(Failure("error"));

      expect(failure, isA<ReduxStateFailure>());
    });

    test("ReduxState.failure failure message should be 'error'", () {
      const failure = ReduxStateFailure(Failure("error"));

      expect(failure.failure.message, equals("error"));
    });
  });
}
