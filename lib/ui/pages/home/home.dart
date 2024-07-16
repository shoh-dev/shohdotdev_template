import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart' hide Store;
import 'package:flutter_hooks_async_redux/flutter_hooks_async_redux.dart';
import 'package:shohdotdev_template/core/models/result/result.dart';
import 'package:shohdotdev_template/core/redux/app/default_action.dart';
import 'package:shohdotdev_template/core/redux/states.dart';
import 'package:shohdotdev_template/core/redux/ui/state_connector.dart';
import 'package:shohdotdev_template/utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  StreamSubscription? stream;

  @override
  void dispose() {
    stream?.cancel();
    super.dispose();
  }

  String? selectValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: BottomNavigationBar(
          elevation: 8,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final dispatch = useDispatch();
          dispatch(GetIpAction());
        },
        child: const Icon(Icons.add),
      ),
      body: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IpWidget(),
        ],
      ),
    );
  }
}

class IpWidget extends StateConnector<String> {
  const IpWidget({super.key});

  @override
  Widget? dataBuilder(BuildContext context, String vm) {
    return TextButton(
      child: Text(vm),
      onPressed: () {},
    );
  }

  @override
  String selector(AppState state) {
    return state.ipState.ip;
  }

  @override
  List<Object> get loadingActions => [GetIpAction];

  @override
  Widget noneBuilder(BuildContext context) {
    return TextButton(
      child: const Text('No IP found'),
      onPressed: () {},
    );
  }

  @override
  bool isNoneWhen(String vm) {
    return vm.isEmpty;
  }
}
