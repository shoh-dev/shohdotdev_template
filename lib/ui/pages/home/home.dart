import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shohdotdev_template/core/redux/app/models/redux_state.dart';
import 'package:shohdotdev_template/core/redux/states.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  StreamSubscription? stream;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // final result = Injection.locationService.getLocationStream();

      // result.fold(
      // (failure) => print(failure),
      // (data) => stream = data.data.listen(print),
      // );
    });
  }

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
          // try {
          // final res = await StoreProvider.of<AppState>(context)
          // .dispatch(GetIpAction());
          // } catch (e) {
          // print(e);
          // }
          final result = await (GetIpAction().call());
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Center(
            child: StoreConnector<AppState, ReduxState>(
                converter: (store) => store.state.ipState.ip,
                builder: (context, vm) {
                  if (vm is ReduxStateLoading) {
                    return const CircularProgressIndicator();
                  }
                  if (vm is ReduxStateSuccess) {
                    return Text((vm.data.toString()));
                  }
                  if (vm is ReduxStateFailure) {
                    return Text(vm.failure.message);
                  }
                  return const Text(
                    "No IP Address",
                  );
                })),
      ),
    );
  }
}
