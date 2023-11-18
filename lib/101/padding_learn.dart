// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  PaddingLearn({Key? key}) : super(key: key);

  ProjectPadding pagePadding = ProjectPadding();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: pagePadding.pagePading,
          child: Container(
            height: 100,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: pagePadding.pagePading,
          child: const Text('ali'),
        )
      ]),
    );
  }
}

class ProjectPadding {
  final EdgeInsets pagePading = const EdgeInsets.all(10);
}
