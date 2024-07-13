import 'package:flutter_test/flutter_test.dart';
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

      result.run().then((value) {
        value.fold((l) => expect(l.message, "error message"), (r) => {});
      });
    });

    //test if the right is correctly set
    test("right part should work, value is shown", () async {
      TaskResult<int> result = TaskEither.tryCatch(() async {
        return const Data(1);
      }, (error, stackTrace) {
        return Failure.exception(error, stackTrace);
      });

      result.run().then((value) {
        value.fold((l) => {}, (r) => expect(r.data, 1));
      });
    });

    //test if the right type is int
    test("right part should work, value is int", () async {
      TaskResult<int> result = TaskEither.tryCatch(() async {
        return const Data(1);
      }, (error, stackTrace) {
        return Failure.exception(error, stackTrace);
      });

      result.run().then((value) {
        value.fold((l) => {}, (r) => expect(r.data, isA<int>()));
      });
    });
  });
}
