import 'package:flutter/material.dart';
import 'package:hardware_flutter/core/random_image.dart';

class ListStyleLearn extends StatelessWidget {
  const ListStyleLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                child: ListTile(
                  title: const RandomImage(),
                  subtitle: const Text('How do you use card'),
                  minLeadingWidth: 0,
                  leading: Container(
                      color: Colors.red,
                      width: 50,
                      alignment: Alignment.bottomLeft,
                      child: const Icon(Icons.money)), // sol tarafa gelir
                  trailing: const Icon(Icons.chevron_right), // sağ tarafa gelir
                  dense: true, //olabildiğince sıkıştırmasını sağlar
                  contentPadding: EdgeInsets
                      .zero, // bunu yine ana tema üzerinden bverebiliyoruz.
                  onTap: () {},
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
