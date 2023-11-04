// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(
          width: 300,
          height: 200,
          child: Text('a' * 500),
        ),
        const SizedBox.shrink(), //boş bir alan tanımlamak için
        SizedBox.square(
          dimension: 100, //kare bir alan tanımlamak için
          child: Text('b' * 50),
        ),
        Container(
          width: 50,
          height: 50,
          padding: const EdgeInsets.all(30.0),
          margin: const EdgeInsets.all(50),
          decoration: ProjectUtillity.boxDecoration,
          constraints: const BoxConstraints(maxWidth: 100, minWidth: 50),
        ),
      ]),
    );
  }
}

class ProjectUtillity {
  static BoxDecoration boxDecoration = const BoxDecoration(
      color: Colors.red,
      boxShadow: [
        BoxShadow(color: Colors.green, offset: Offset(5, 1), blurRadius: 12)
      ]);
}

class ProjectContainerDecoration extends BoxDecoration {
  const ProjectContainerDecoration()
      : super(
          color: Colors.red,
          boxShadow: const [
            BoxShadow(color: Colors.green, offset: Offset(5, 1), blurRadius: 12)
          ],
        );
}
