import 'package:estados/pages/paina1_page.dart';
import 'package:estados/pages/paina2_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
      routes: <String, WidgetBuilder>{
        'pagina1': (BuildContext context) => const Pagina1Page(),
        'pagina2': (BuildContext context) => const Pagina2Page(),
      },
      initialRoute: 'pagina1' ,
    );
  }
}