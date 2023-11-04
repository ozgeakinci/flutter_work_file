import 'package:flutter/material.dart';

//BuildContext:Global bir objedir.

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          //Text button backgroundu olmayan
          children: [
            TextButton(
              onPressed: () {},
              child: const Text('Save'),
            ),
            //Arka planı olan button
            ElevatedButton(
              onPressed: () {},
              child: const Text('data'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
            ),

            const FloatingActionButton(
              foregroundColor: Colors.blue,
              backgroundColor: Colors.amber,
              onPressed:
                  null, //Eğer disable olmasını istersek null verebiliyoruz
              child: Icon(Icons.add),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('data'),
            ),
            //custom olarak yaratmak istersek
            // InkWell(
            //   onTap: () => {},
            // ),
          ],
        ));
  }
}
