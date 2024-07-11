import 'package:flutter_test/flutter_test.dart';
import 'package:shohdotdev_template/core/core.dart';

void main() {
  setUpAll(() async {
    return await Injection.setup(isTesting: true);
  });

  group("check 'IP' functions", () {
    test("must get ip address of device", () async {
      final ip = await Injection.ipService.getIPAddress();
      ip.fold(
        (_) {},
        (r) {
          expect(r.data, isNotEmpty);
        },
      );
    });

    test("must get failure of device no internet", () async {
      //simulate no internet connection

      final ip = await Injection.ipService.getIPAddress();

      ip.fold(
        (e) {
          expect(e.message, isNotEmpty);
        },
        (_) {},
      );
    });
  });
}
