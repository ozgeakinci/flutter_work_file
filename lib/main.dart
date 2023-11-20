import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hardware_flutter/101/column_row_learn.dart';
import 'package:hardware_flutter/101/container_tobeto.dart';
import 'package:hardware_flutter/101/custom_widget_learn.dart';
import 'package:hardware_flutter/101/card_learn.dart';
import 'package:hardware_flutter/101/colors_learn.dart';

import 'package:hardware_flutter/101/gridview.dart';
import 'package:hardware_flutter/101/icon_learn.dart';
import 'package:hardware_flutter/101/app_bar.dart';
import 'package:hardware_flutter/101/button_learn.dart';
import 'package:hardware_flutter/101/container.sized_box_learn.dart';
import 'package:hardware_flutter/101/image_learn.dart';
import 'package:hardware_flutter/101/indicator_learn.dart';
import 'package:hardware_flutter/101/list_style_learn.dart';
import 'package:hardware_flutter/101/stack_learn.dart';
import 'package:hardware_flutter/demos/demo.dart';
import 'package:hardware_flutter/101/padding_learn.dart';
import 'package:hardware_flutter/101/scaffold_learn.dart';
import 'package:hardware_flutter/101/stateless.learn.dart';
import 'package:hardware_flutter/101/text_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          listTileTheme: const ListTileThemeData(
              contentPadding: EdgeInsets
                  .zero), //tüm temadaki list styleların paddingini sıfır yapar
          progressIndicatorTheme: const ProgressIndicatorThemeData(
              color: Colors.white), //Progressin tüm temada rengini aynı yapar.
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle.light,
          ),
        ),
        home: const StackLearn());
  }
}
