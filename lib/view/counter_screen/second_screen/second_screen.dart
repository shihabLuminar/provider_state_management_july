import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/controller/counter_screen_controller.dart';
import 'package:provider_state_management/main.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              context.read<CounterScreenController>().onDecrement();
            },
            child: Text("Add")),
      ),
    );
  }
}
