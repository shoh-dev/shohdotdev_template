import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:shohdotdev_template/core/redux/states.dart';
import 'package:shohdotdev_template/core/redux/states/ip_state/actions/increment_action.dart';
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
      floatingActionButton: const ClickButton(),
      body: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IpWidget(),
          CounterWidget(),
        ],
      ),
    );
  }
}

class ClickButton extends StatelessWidget {
  const ClickButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed:
              context.isWaiting(GetIpAction) ? null : () => onCall(context),
          child: const Icon(Icons.gps_fixed),
        ),
        ElevatedButton(
          onPressed: () {
            context.isWaiting(GetIpAction)
                ? null
                : context.dispatch(IncrementAction());
          },
          child: const Icon(Icons.add),
        ),
      ],
    );
  }

  void onCall(BuildContext context) {
    context.dispatch(GetIpAction());
  }
}

class IpWidget extends StateConnector<String> {
  const IpWidget({super.key});

  @override
  Widget? dataBuilder(BuildContext context, String vm) {
    print("Rebuilding IpWidget");
    return Text(vm);
  }

  @override
  String selector(AppState state) {
    return state.ipState.ip;
  }

  @override
  Widget noneBuilder(BuildContext context) {
    return TextButton(
      child: const Text('No IP found'),
      onPressed: () {},
    );
  }

  @override
  List<Object> get actions => [GetIpAction];
}

class _Vm {
  final int test;
  final String ip;

  const _Vm(this.test, this.ip);

  @override
  int get hashCode => test.hashCode ^ ip.hashCode;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Vm &&
            (identical(other.test, test) || other.ip == ip));
  }
}

class CounterWidget extends StateConnector<_Vm> {
  const CounterWidget({super.key});

  @override
  Widget? dataBuilder(BuildContext context, _Vm vm) {
    print("Rebuilding CounterWidget");
    return TextButton(
      child: Text(vm.test.toString()),
      onPressed: () {},
    );
  }

  @override
  _Vm selector(AppState state) {
    return _Vm(state.ipState.test, state.ipState.ip);
  }
}
