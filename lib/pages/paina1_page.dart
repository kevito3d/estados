import 'package:estados/models/usuario_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados/bloc/usuario/usuario_cubit.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pagina 1'),
          // actions: [
          //   IconButton(
          //       onPressed: () {
          //         context.read<UsuarioCubit>().borrarUsuario();
          //       },
          //       icon: const Icon(Icons.delete))
          // ],
        ),
        body: const BodyScaffold(),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.navigate_next),
            onPressed: () => Navigator.pushNamed(context, 'pagina2')));
  }
}

class BodyScaffold extends StatelessWidget {
  const BodyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsuarioCubit, UsuarioState>(
      builder: (_, state) {
        switch (state.runtimeType) {
          case UsuarioInit:
            return const Center(
              child: Text('No existe usuario'),
            );
          case UsuarioActivo:
            return InformacionUsuario(
                usuario: (state as UsuarioActivo).usuario);
          default:
            return const Center(
              child: Text('Estado no reconocido'),
            );
        }

        // if (state is UsuarioInit) {
        //   return const Center(
        //     child: Text('No existe usuario'),
        //   );
        // } else if (state is UsuarioActivo) {
        //   return InformacionUsuario(usuario: state.usuario);
        // }
        // return const Center(
        //   child: Text('Estado no reconocido'),
        // );
      },
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  const InformacionUsuario({
    super.key,
    required this.usuario,
  });

  final Usuario usuario;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'General',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          ListTile(
            title: Text('Nombre: ${usuario.nombre}'),
          ),
          ListTile(
            title: Text('Edad: ${usuario.edad}'),
          ),
          const Text(
            'Profesiones',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          ...usuario.profesion
              .map((e) => ListTile(
                    title: Text(e),
                  ))
              .toList()
        ],
      ),
    );
  }
}
