import 'package:flutter_test/flutter_test.dart';
import 'package:shohdotdev_template/core/models/models.dart';

void main() {
  group("testing 'Data' model", () {
    //test if the data is correctly set (ex: int data = 1)
    test("data should be set correctly", () {
      const data = Data<int>(1);
      expect(data.data, 1);
    });

    //test if hashCode is correctly set
    test("hashCode should be set correctly", () {
      const data = Data<int>(1);
      expect(data.hashCode, 1.hashCode);
    });

    //test if Void is correctly set
    test("VoidData should be set correctly", () {
      const data = VoidData();
      expect(data, isA<Data<void>>());
    });
  });
}
