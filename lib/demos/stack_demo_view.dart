import 'package:flutter/material.dart';
import 'package:hardware_flutter/core/random_image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({Key? key}) : super(key: key);
  final _cardHeight = 60.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    bottom: _cardHeight / 2,
                    child: const RandomImage(),
                  ),
                  Positioned(
                      height: _cardHeight,
                      bottom: 0,
                      width: 300,
                      child: const Card(
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            Spacer(
              flex: 4,
            )
          ],
        ));
  }
}
