import 'package:disenos_flutter_app/screens/basic_design.dart';
import 'package:disenos_flutter_app/screens/scroll_design.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material app',
      initialRoute: 'scroll_design',
      routes: {
        'basic_design': ((_) => const BasicDesignScreen()),
        'scroll_design': ((_) => const ScrollScreen())
      },
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [Text('Hola mundo'), Text('Hola mundo')],
      ),
    );
  }
}
