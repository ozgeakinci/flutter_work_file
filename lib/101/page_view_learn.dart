import 'package:flutter/material.dart';
import 'package:hardware_flutter/101/container.sized_box_learn.dart';
import 'package:hardware_flutter/101/icon_learn.dart';
import 'package:hardware_flutter/101/image_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  _PageViewLearnState createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.9);

  int _currentPageIndex = 0;

  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(_currentPageIndex.toString()),
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut);
            },
            child: const Icon(Icons.chevron_left),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut);
            },
            child: const Icon(Icons.chevron_right),
          )
        ],
      ),

      //PageView kaydırmalı sayfa yapmamızı sağlayan komponent
      body: PageView(
          //diğer sayfanın küçük bir ön izlemesi
          controller: _pageController,
          padEnds: false,
          onPageChanged: _updatePageIndex,
          children: [
            const ImageLearn(),
            IconLearnView(),
            const ContainerSizedBoxLearn()
          ]),
    );
  }
}
