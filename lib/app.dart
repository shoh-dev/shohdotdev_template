import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:shohdotdev_template/ui/pages/home/home.dart';

class AppBase extends StatefulWidget {
  const AppBase({super.key});

  @override
  State<AppBase> createState() => _AppBaseState();
}

class _AppBaseState extends State<AppBase> {
  final botToastBuilder = BotToastInit();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routerConfig: Injection.appRouter.router,
      builder: (context, child) {
        child = botToastBuilder(context, child);
        return child;
      },
      home: const HomePage(),
    );
  }
}
