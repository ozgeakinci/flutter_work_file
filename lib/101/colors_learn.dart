import 'package:flutter/material.dart';

class ColorsLearn extends StatelessWidget {
  ColorsLearn({Key? key}) : super(key: key);

  final ColorsItem colorItem = ColorsItem();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors Learn'),
      ),
      body: Container(
        color: colorItem.colors,
      ),
    );
  }
}

class ColorsItem {
  final Color colors = const Color(0xFF527434);
}
