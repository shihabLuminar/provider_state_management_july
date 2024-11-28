import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/controller/counter_screen_controller.dart';
import 'package:provider_state_management/view/counter_screen/counter_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterScreenController(),
      child: MaterialApp(
        home: CounterScreen(),
      ),
    );
  }
}
