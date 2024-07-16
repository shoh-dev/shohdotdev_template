import 'package:async_redux/async_redux.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:provider_for_redux/provider_for_redux.dart';
import 'package:shohdotdev_template/core/redux/app/app_store.dart';
import 'package:shohdotdev_template/core/redux/states.dart';
import 'package:shohdotdev_template/ui/pages/home/home.dart';

class AppBase extends StatefulWidget {
  const AppBase({super.key});

  @override
  State<AppBase> createState() => _AppBaseState();
}

class _AppBaseState extends State<AppBase> {
  final botToastBuilder = BotToastInit();

  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return AsyncReduxProvider<AppState>.value(
      value: appStore,
      child: MaterialApp(
        navigatorKey: navigatorKey,
        // themeMode: ThemeMode.dark,
        // darkTheme: ThemeData.dark(),
        navigatorObservers: [
          BotToastNavigatorObserver(),
        ],
        localizationsDelegates: const [
          DefaultMaterialLocalizations.delegate,
          DefaultWidgetsLocalizations.delegate,
        ],
        // routerConfig: Injection.appRouter.router,
        builder: (context, child) {
          child = botToastBuilder(context, child);
          return child;
        },
        home: UserExceptionDialog<AppState>(
            onShowUserExceptionDialog:
                (context, userException, useLocalContext) {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text(userException.errorText ?? "Error"),
                  content: Text(userException.message ?? "Use exception"),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
            },
            child: const HomePage()),
      ),
    );
  }
}
