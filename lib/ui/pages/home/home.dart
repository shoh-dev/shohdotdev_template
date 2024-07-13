import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shohdotdev_template/core/models/result/result.dart';
import 'package:shohdotdev_template/core/redux/states.dart';
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
          await GetIpAction().dispatch();
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Center(
            child: StoreConnector<AppState, Result<String>>(
                converter: (store) => store.state.ipState.ip,
                builder: (context, vm) {
                  if (vm is ResultLoading) {
                    return const CircularProgressIndicator();
                  }
                  if (vm is ResultData) {
                    return Text(vm.data);
                  }
                  if (vm is ResultFailure) {
                    return Text(vm.failMessage);
                  }
                  return const Text(
                    "No IP Address",
                  );
                })),
      ),
    );
  }
}
