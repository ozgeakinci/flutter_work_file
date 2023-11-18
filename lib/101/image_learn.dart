import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

  final String applePicture =
      "https://images.everydayhealth.com/images/apples-101-about-1440x810.jpg?sfvrsn=f86f2644_4";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SizedBox(
                height: 400,
                width: 500,
                child: JpgImage(
                  name: ImageItems().questionLogo,
                )),
            Image.network(applePicture)
          ],
        ));
  }
}

class ImageItems {
  final String questionLogo = 'quizz';
  final String appleImage = "assets/jpg/applewithbook.jpeg";
}

class JpgImage extends StatelessWidget {
  const JpgImage({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/jpg/$name.jpg',
      fit: BoxFit.cover,
    );
  }
}
