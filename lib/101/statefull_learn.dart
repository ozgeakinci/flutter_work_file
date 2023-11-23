import 'package:flutter/material.dart';
import 'package:hardware_flutter/prouduct/counter_hello_button.dart';
import 'package:hardware_flutter/prouduct/language/language_items.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({Key? key}) : super(key: key);

  //dışarıyla veri alışverişi yapılan yer

  @override
  _StatefullLearnState createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _currentValue = 0;

  void updateCount(bool isIncrement) {
    isIncrement ? _currentValue++ : _currentValue--;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(LanguageItems.WelcomeTitle),
        ),
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _incrementButton(),
            _deincrementButton(),
          ],
        ),
        body: Column(
          children: [
            Center(
              child: Text(
                _currentValue.toString(),
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            const Placeholder(),
            const CounterHelloButton()
          ],
        ));
  }

  FloatingActionButton _deincrementButton() {
    return FloatingActionButton(
      onPressed: () {
        updateCount(false);
      },
      child: const Icon(Icons.remove),
    );
  }

  Padding _incrementButton() {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: FloatingActionButton(
        onPressed: () {
          updateCount(true);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
