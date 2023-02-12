import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              onPressed: () => {},
              color: Colors.blue,
              child: const Text('estableser usuario', style: TextStyle(color: Colors.white),),
            ),
             MaterialButton(
              onPressed: () => {},
              color: Colors.blue,
              child: const Text('Estableser edad', style: TextStyle(color: Colors.white),),
            ),
             MaterialButton(
              onPressed: () => {},
              color: Colors.blue,
              child: const Text('Estableser profesión', style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
