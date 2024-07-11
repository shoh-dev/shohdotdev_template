import 'package:flutter/material.dart';
import 'package:shohdotdev_template/app.dart';
import 'package:shohdotdev_template/core/injection/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Injection.setup();

  final ipResult = await Injection.ip.getIPAddress();

  ipResult.mapLeft(
    (failure) => debugPrint(failure.message),
  );

  runApp(
    const AppBase(),
  );
}
