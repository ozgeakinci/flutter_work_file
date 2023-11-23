import 'package:flutter/material.dart';

class LifeCycle extends StatefulWidget {
  const LifeCycle({Key? key, required this.message}) : super(key: key);

  final String message;

  @override
  _LifeCycleState createState() => _LifeCycleState();
}

class _LifeCycleState extends State<LifeCycle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.message.length.isEven
            ? const Text('Kelime çift ')
            : const Text('Kelime tek'),
      ),
    );
  }
}
