// main_screen.dart
import 'package:callback_functions/input_counter_box.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CallbackFunctions"),
        backgroundColor: const Color.fromARGB(255, 172, 247, 251),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              InputCounterBox(
                color: const Color.fromARGB(255, 241, 255, 119),
                onLengthChanged: () {
                  debugPrint("Box 1 wurde verändert");
                },
              ),
              InputCounterBox(
                color: const Color.fromARGB(255, 162, 226, 251),
                onLengthChanged: () {
                  debugPrint("Box 2 wurde verändert");
                },
              ),
              InputCounterBox(
                color: const Color.fromARGB(255, 230, 137, 246),
                onLengthChanged: () {
                  debugPrint("Box 3 wurde verändert");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
