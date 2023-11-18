import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Center(
            child: Column(
          children: [
            _CircularProgressIndicator(),
            SizedBox(
              height: 30,
            ),
            LinearProgressIndicator(),
            RefreshProgressIndicator(),
          ],
        )));
  }
}

//Indicator tüm projelerde her yerde aynı kullanılır bu sebeble eğer rengini değiştirmek istersek ana temadan özelliğini değiştirmemiz gerekir. Main üzerinden Metarilapp içindeki Themedab    progressIndicatorTheme:
//        const ProgressIndicatorThemeData(color: Colors.white),  verebiliriz.

class _CircularProgressIndicator extends StatelessWidget {
  const _CircularProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      value: 0.9,
      strokeWidth: 5,
      color: Colors.red,
      backgroundColor: Colors.white,
    );
  }
}
