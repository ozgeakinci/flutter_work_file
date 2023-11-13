import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});

  final String _title = 'heloo';
  final IconSize iconSize = IconSize();
  final ButtonColor buttonColor = ButtonColor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
            color: Theme.of(context).colorScheme.background,
            iconSize: 40,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
            color: buttonColor.buttonColor,
            iconSize: iconSize.iconSmall,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
            color: buttonColor.buttonColor,
            iconSize: iconSize.iconSmall,
          )
        ],
      ),
    );
  }
}

class IconSize {
  final double iconSmall = 40;
}

class ButtonColor {
  final Color buttonColor = const Color(0xFFFF6F91);
}
