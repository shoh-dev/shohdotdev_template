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
        onPressed: () async {
          await GetIpAction(setLoadingState: true).dispatch();
          await Future<void>.delayed(const Duration(seconds: 2));
          GetIpAction().disposeState();
        },
        child: const Icon(Icons.add),
      ),
      body: const SafeArea(
        child: Center(
          child: IpWidget(),
        ),
      ),
    );
  }
}

class IpWidget extends StateConnectorTest<String> {
  const IpWidget({super.key});

  @override
  Result<String> selector(AppState state) {
    return state.ipState.ip;
  }

  @override
  Widget? dataBuilder(BuildContext context, ResultData<String> vm) {
    return Text(vm.data);
  }

  @override
  Widget? noneBuilder(BuildContext context, ResultNone<String> vm) {
    return const Text('No IP found');
  }
}
