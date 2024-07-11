import 'package:flutter/material.dart';
import 'package:shohdotdev_template/app.dart';
import 'package:shohdotdev_template/core/injection/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Injection.setup();

  final result = await Injection.locationService.allowedPermissions();

  result.fold(
    (failure) => print(failure),
    (data) => print(data),
  );

  runApp(
    const AppBase(),
  );
}
