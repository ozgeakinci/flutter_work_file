import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            const Card(
              margin: ProjectMargin.cardMargin,
              elevation: 100,
              shape: CircleBorder(),
              child: SizedBox(
                height: 100,
                width: 300,
                child: Center(child: Text('Özge')),
              ),
            ),
            Card(
              color: Theme.of(context).colorScheme.onPrimary,
              child: const SizedBox(
                height: 100,
                width: 100,
              ),
            ),
            _CustomCard(
              child: const SizedBox(
                height: 100,
                width: 100,
              ),
            )
          ],
        ));
  }
}

class ProjectMargin {
  static const cardMargin = EdgeInsets.all(10);
}

class _CustomCard extends StatelessWidget {
  _CustomCard({
    Key? key,
    required this.child,
  });
  final Widget child;
  final roundedRectanglerBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.onPrimary,
      shape: roundedRectanglerBorder,
      child: child,
    );
  }
}


//Borders
//StadiumBorder()
//CircleBorder()
//RoundedRectangeBorder()