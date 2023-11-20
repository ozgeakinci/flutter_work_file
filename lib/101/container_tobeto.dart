import 'package:flutter/material.dart';

class ContainerTobeto extends StatelessWidget {
  const ContainerTobeto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: InkWell(
        onTap: () {},
        splashColor: Colors.blue,
        highlightColor: Colors.green,
        child: Container(
          constraints: const BoxConstraints(
              minWidth: 100, maxWidth: 200, minHeight: 50, maxHeight: 100),
          transform: Matrix4.rotationZ(0.2),
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.red, width: 12),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey, blurRadius: 10, offset: Offset(5, 2))
              ]),
          child: const Text(
            'Ozge',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
