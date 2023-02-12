import 'package:flutter/material.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pagina 1'),
        ),
        body: const InformacionUsuario(),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.navigate_next),
            onPressed: () => Navigator.pushNamed(context, 'pagina2')));
  }
}

class InformacionUsuario extends StatelessWidget {
  const InformacionUsuario({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
         
          Text(
            'General',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),

          ListTile(
            title: Text('Nombre:'),
          ),
          ListTile(
            title: Text('Edad:'),
          ),

          Text(
            'Profesiones',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),

          ListTile(
            title: Text('Profesion 1:'),
          ),
          ListTile(
            title: Text('Profesion 2:'),
          ),

          
        ],
      ),
    );
  }
}
