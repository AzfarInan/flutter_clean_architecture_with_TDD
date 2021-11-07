import 'package:clean_architecture/features/number_trivia/presentation/pages/number_trivia_page.dart';
import 'package:flutter/material.dart';
import 'injection_container.dart' as dependency;

Future<void> main() async {
  await dependency.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Trivia',
      theme: ThemeData(
        primaryColor: Colors.green.shade800,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.green.shade600),
      ),
      home: NumberTriviaPage(),
    );
  }
}
