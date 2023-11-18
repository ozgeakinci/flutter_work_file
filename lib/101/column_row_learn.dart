import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //Ekranı 4 ana parçaya ayırmak istersek expanded kullanarak bunu başarabiliriz. flex değeride hangi alanın ne kadar olacağını belirler
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.purple,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          const Expanded(flex: 2, child: FlutterLogo()),
          const Expanded(flex: 2, child: FlutterLogo()),
          //responsive tasarım için her zaman alanları Expanded ile ayırmak gerekir.
          //Buradaki alanda height 300 verildi sabit değer her zaman hesaba katılarak flex alanlar ona göre alanlarını belirler
          const SizedBox(
              height: 300,
              child: Column(
                children: [
                  Expanded(child: Text('data')),
                  Expanded(child: Text('data')),
                  Expanded(child: Text('data')),
                  Expanded(child: Text('data')),
                ],
              ))
        ],
      ),
    );
  }
}
