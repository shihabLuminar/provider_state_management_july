import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/controller/counter_screen_controller.dart';
import 'package:provider_state_management/controller/second_screen_controller.dart';
import 'package:provider_state_management/view/counter_screen/counter_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SecondScreenController()),
      ],
      child: MaterialApp(
        home: ChangeNotifierProvider(
            create: (context) => CounterScreenController(),
            child: CounterScreen()),
      ),
    );
  }
}
