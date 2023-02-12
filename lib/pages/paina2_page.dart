import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados/bloc/usuario/usuario_cubit.dart';
import 'package:estados/models/usuario_model.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {
    final usuarioCubit = context.read<UsuarioCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('pagina 2'),
        actions: [
          IconButton(
              onPressed: () {
                usuarioCubit.borrarUsuario();
              },
              icon: const Icon(Icons.delete))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              onPressed: () {
                usuarioCubit.activarUsuario(
                      Usuario(
                          nombre: 'Fernando',
                          edad: 35,
                          profesion: ['Desarrollador', 'Ingeniero']),
                    );
              },
              color: Colors.blue,
              child: const Text(
                'estableser usuario',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                usuarioCubit.cambiarEdad();
              
              },
              color: Colors.blue,
              child: const Text(
                'Estableser edad',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                usuarioCubit.agregarProfesion();
              },
              
              color: Colors.blue,
              child: const Text(
                'Estableser profesión',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
