import 'package:flutter_test/flutter_test.dart';
import 'package:shohdotdev_template/core/models/models.dart';

void main() {
  group("testing 'Failure' model", () {
    //test if the message is correctly set
    test("message should be set correctly", () {
      const failure = Failure("error");
      expect(failure.message, "error");
    });

    //test if the code is correctly set
    test("code should be set correctly", () {
      const failure = Failure("error", code: "404");
      expect(failure.code, "404");
    });

    //test if the stackTrace is correctly set
    test("stackTrace should be set correctly", () {
      const failure = Failure("error", stackTrace: StackTrace.empty);
      expect(failure.stackTrace, StackTrace.empty);
    });

    //test if the props are correctly set
    test("props should be set correctly", () {
      const failure = Failure("error");
      expect(failure.hashCode, "error".hashCode);
    });

    //test if the exception is correctly set
    test("exception should be set correctly", () {
      final failure = Failure.exception(Exception("error"), StackTrace.empty);
      expect(failure.message, Exception("error").toString());
    });
  });
}
