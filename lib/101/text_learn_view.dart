import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({super.key});
  final String name = 'ozge';
  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Welcome $name ${name.length}',
              maxLines: 3,
              style: GoogleFonts.roboto(
                  textStyle: const TextStyle(color: Colors.blue))),
          Text(
            'Welcome $name ${name.length}',
            maxLines: 3,
            textAlign: TextAlign.center,
            style: ProjectStyles.welcomeStyle,
          ),
          Text('Welcome $name ${name.length}',
              maxLines: 3,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(color: ProjectColor.welcomeColor)),
          Text(keys.welcome),
        ]),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      color: Colors.red,
      wordSpacing: 2,
      letterSpacing: 2,
      fontSize: 22,
      fontWeight: FontWeight.w600);
}

class ProjectColor {
  static Color welcomeColor = Colors.red;
}

class ProjectKeys {
  final String welcome = 'Merhaba';
}
