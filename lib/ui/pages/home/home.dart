import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shohdotdev_template/core/models/result/result.dart';
import 'package:shohdotdev_template/core/redux/states.dart';
import 'package:shohdotdev_template/core/redux/ui/state_connector.dart';

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
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: () {
              GetIpAction().dispatchWithIndocator();
            },
            child: const Icon(Icons.gps_fixed),
          ),
          FloatingActionButton(
            onPressed: () {
              IncrementAction().dispatch();
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
      body: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IpWidget(),
          CounterWidget(),
        ],
      ),
    );
  }
}

class IpWidget extends StateConnector<String> {
  const IpWidget({super.key});

  @override
  Result<String> selector(AppState state) {
    return state.ipState.ip;
  }

  @override
  Widget? dataBuilder(BuildContext context, ResultData<String> vm) {
    print('IpWidget Rebuild');
    return TextButton(
      child: Text(vm.data),
      onPressed: () {},
    );
  }

  @override
  Widget? noneBuilder(BuildContext context, ResultNone<String> vm) {
    return TextButton(
      child: const Text('No IP found'),
      onPressed: () {},
    );
  }
}

class CounterWidget extends StateConnector<int> {
  const CounterWidget({super.key});

  @override
  Result<int> selector(AppState state) {
    return state.ipState.count;
  }

  @override
  Widget? dataBuilder(BuildContext context, ResultData<int> vm) {
    print('CounterWidget Rebuild');
    return TextButton(
      child: Text(vm.data.toString()),
      onPressed: () {},
    );
  }

  @override
  Widget? noneBuilder(BuildContext context, ResultNone<int> vm) {
    return TextButton(
      child: const Text('0'),
      onPressed: () {},
    );
  }
}
