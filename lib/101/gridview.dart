import 'package:flutter/material.dart';

class GridViewLearn extends StatelessWidget {
  const GridViewLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 2.0),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            color: (index % 2 == 0) ? Colors.green : Colors.yellow,
            child: Center(child: Text('$index}')),
          );
        },
      ),
    );
  }
}
