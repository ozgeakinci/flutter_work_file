import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({Key? key}) : super(key: key);

  final String _food = 'Food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: _CustomButton(
                      food: _food,
                      onPressed: () {},
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: _CustomButton(
                food: _food,
                onPressed: () {},
              ),
            )
          ],
        ));
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton({
    super.key,
    required String food,
    required this.onPressed,
  }) : _food = food;

  final String _food;

  //callback function dışardan alması gereken
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: _ColorsUtility().redColor,
          shape: const StadiumBorder()),
      onPressed: () {},
      child: Text(
        _food,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: _ColorsUtility().whiteColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _ColorsUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}
