import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({Key? key, this.height = 100}) : super(key: key);

  final String randomPhoto = 'https://picsum.photos/200/300';
  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.network(randomPhoto, height: height, fit: BoxFit.cover);
  }
}
