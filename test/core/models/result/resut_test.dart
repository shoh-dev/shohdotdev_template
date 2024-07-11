import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:shohdotdev_template/core/models/models.dart';

void main() {
  group("testing 'Result' model", () {
    //test if the error message is correctly set
    test("left part should work, error message is shown", () {
      Result<int> result = const Left(Failure("error message"));
      expect(result.fold((l) => l, (r) => r), const Failure("error message"));
    });

    //test if the right is correctly set
    test("right part should work, value is shown", () {
      Result<int> result = const Right(Data(1));
      expect(result.fold((l) => l.message, (r) => r), const Data(1));
    });

    //test if the right type is int
    test("right part should work, value is int", () {
      Result<int> result = const Right(Data(1));
      expect(result.fold((l) => l.message, (r) => r.data), isA<int>());
    });
  });
}
