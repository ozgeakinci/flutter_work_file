import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const TitleTextWidget(
            title: 'veli',
          ),
          emptyBox(),
          const TitleTextWidget(
            title: 'ali',
          ),
          const TitleTextWidget(
            title: 'ozan',
          ),
          emptyBox(),
          const CustomContainer(),
          const CustomContainer(),
          const CustomContainer()
        ],
      ),
    );
  }

  SizedBox emptyBox() {
    return const SizedBox(
      height: 20,
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF117112),
      height: 100,
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      padding: const EdgeInsets.all(50),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.headlineMedium);
  }
}
