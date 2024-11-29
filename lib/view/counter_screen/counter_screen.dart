import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/controller/counter_screen_controller.dart';
import 'package:provider_state_management/view/second_screen/second_screen.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("-------------------------rebuild----------------------");
    // final counterScreenState = context.watch<CounterScreenController>();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterScreenController>().onIncrement();
        },
      ),
      body: Center(
          child: Consumer<CounterScreenController>(
        builder: (context, counterScreenState, child) => InkWell(
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondScreen(),
                ));
          },
          child: Text(
            counterScreenState.count.toString(),
            style: TextStyle(
              color: Colors.blue,
              fontSize: 40,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      )),
    );
  }
}
