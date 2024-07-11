import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:shohdotdev_template/core/models/models.dart';

void main() {
  group("testing 'TaskResult' model", () {
    //test if the error message is correctly set
    test("left part should work, error message is shown", () async {
      TaskResult<int> result = TaskEither.tryCatch(() async {
        throw Exception("error message");
      }, (error, stackTrace) {
        return Failure.exception(error, stackTrace);
      });

      expect((await result.run()).fold((l) => l, (r) => r),
          const Failure("Exception: error message"));
    });

    //test if the right is correctly set
    test("right part should work, value is shown", () async {
      TaskResult<int> result = TaskEither.tryCatch(() async {
        return const Data(1);
      }, (error, stackTrace) {
        return Failure.exception(error, stackTrace);
      });

      expect((await result.run()).fold((l) => l.message, (r) => r.data), 1);
    });

    //test if the right type is int
    test("right part should work, value is int", () async {
      TaskResult<int> result = TaskEither.tryCatch(() async {
        return const Data(1);
      }, (error, stackTrace) {
        return Failure.exception(error, stackTrace);
      });

      expect((await result.run()).fold((l) => l.message, (r) => r.data),
          isA<int>());
    });
  });
}
