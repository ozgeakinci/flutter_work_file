import 'package:flutter/material.dart';
import 'package:hardware_flutter/101/button_learn.dart';
import 'package:hardware_flutter/101/container.sized_box_learn.dart';
import 'package:hardware_flutter/101/scaffold_learn.dart';
//import 'package:hardware_flutter/101/text_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const ButtonLearn(),
    );
  }
}
