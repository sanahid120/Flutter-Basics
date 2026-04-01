import 'package:flutter/material.dart';
import 'package:flutter_basics/homepage.dart';
import 'package:flutter_basics/listView.dart';
import 'package:flutter_basics/image.dart';
import 'package:flutter_basics/text_and_buttons.dart';
import 'package:flutter_basics/container.dart';
import 'package:flutter_basics/input_fields.dart';
import 'package:flutter_basics/formValidation.dart';
import 'package:flutter_basics/alert.dart';
import 'package:flutter_basics/bars.dart';
import 'package:flutter_basics/liveExam.dart';

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
      title: 'Flutter Basics',
      theme: ThemeData(
        brightness: Brightness.light,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 2),
          ),
          errorStyle: TextStyle(
            color: Colors.red,
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),

        textTheme: TextTheme(
          // to use this on text widget, we have to use style: Theme.of(context).textTheme.displayLarge
          displayLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          bodyLarge: TextStyle(fontSize: 16, color: Colors.black),
          bodyMedium: TextStyle(fontSize: 14, color: Colors.black),
          bodySmall: TextStyle(fontSize: 12, color: Colors.black),
        ),

        cardTheme: CardThemeData(
          color: Colors.grey[100],
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.orange,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
          centerTitle: true,
        ),
      ),
      home: LiveExam(),
      routes: {
        '/textinput': (context) => const TextInputField(),
        '/listview': (context) => const ListviewClass(),
        '/image': (context) => const ImageClass(),
        '/textbuttons': (context) => const TextAndButtons(),
        '/container': (context) => const ContainerClass(),
        '/formvalidation': (context) => const FormFieldClass(),
        '/alertdialouge': (context) => const AlertDialougeWidget(),
        '/bars': (context) => const BarsWidgets(),
      },
    );
  }
}
