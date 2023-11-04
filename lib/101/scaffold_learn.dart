import 'package:flutter/material.dart';

//Uygulamanın iskeleti

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scaffold samples')),
      body: const Text('merhaba'),
      backgroundColor: Colors.amber,
      drawer: const Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
      ),
      floatingActionButtonLocation: //lokasyonunu belirlemek için
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'a'),
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'b'),
      ]),
    );
  }
}
