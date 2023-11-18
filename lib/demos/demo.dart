import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hardware_flutter/101/image_learn.dart';

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  final String _title = 'Create your first note';
  final String _descripton = 'Add a note';
  final String _createNote = 'Create a note';
  final String _importNote = 'Import Notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItem.horizontalPadding,
        child: Column(children: [
          Image.asset(ImageItems().appleImage),
          _TitleWidget(title: _title),
          Padding(
            padding: PaddingItem.verticalPadding,
            child: _SubTitleWidget(
              title: _descripton * 15,
            ),
          ),
          const Spacer(),
          _createButton(context),
          _textButton(context),
          const SizedBox(height: ButtonHeight.buttonNormalHeight),
        ]),
      ),
    );
  }

  TextButton _textButton(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        _importNote,
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(color: Colors.blue),
      ),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: SizedBox(
        height: ButtonHeight.buttonNormalHeight,
        child: Center(
          child: Text(
            _createNote,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      ),
    );
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({
    Key? key,
    this.textAlign = TextAlign.center,
    required this.title,
  });

  final TextAlign textAlign;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        style: Theme.of(context)
            .textTheme
            .titleSmall
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400));
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold));
  }
}

class PaddingItem {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ButtonHeight {
  static const double buttonNormalHeight = 50;
}
