import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/controller/counter_screen_controller.dart';
import 'package:provider_state_management/controller/second_screen_controller.dart';
import 'package:provider_state_management/main.dart';
import 'package:provider_state_management/view/counter_screen/counter_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final secondScreenState = context.watch<SecondScreenController>();
    return Scaffold(
      backgroundColor: secondScreenState.bg,
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  // context.read<CounterScreenController>().onDecrement();
                  context
                      .read<SecondScreenController>()
                      .onColorChanged(Colors.blue);
                },
                child: Text("Add")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChangeNotifierProvider(
                                create: (context) => CounterScreenController(),
                                child: CounterScreen(),
                              )));
                },
                child: Text("to counter screen")),
          ],
        ),
      ),
    );
  }
}
