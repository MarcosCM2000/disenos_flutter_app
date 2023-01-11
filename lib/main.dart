import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:disenos_flutter_app/screens/basic_design.dart';
import 'package:disenos_flutter_app/screens/home_screen.dart';
import 'package:disenos_flutter_app/screens/scroll_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material app',
      initialRoute: 'home_screen',
      routes: {
        'basic_design': ((_) => const BasicDesignScreen()),
        'scroll_design': ((_) => const ScrollScreen()),
        'home_screen': ((_) => const HomeScreen())
      },
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [Text('Hola mundo'), Text('Hola mundo')],
      ),
    );
  }
}
