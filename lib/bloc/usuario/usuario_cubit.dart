import 'package:estados/models/usuario_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part "usuarios_state.dart";

class UsuarioCubit extends Cubit<UsuarioState> {
  UsuarioCubit() : super(UsuarioInit());

  void activarUsuario(Usuario usuario) => emit(UsuarioActivo(usuario));

  void cambiarEdad() {
    final currentState = state;

    if (currentState is UsuarioActivo) {
      final nuevoUsuario = currentState.usuario.copyWith(edad: 25);
      emit(UsuarioActivo(nuevoUsuario));
    }
  }

  void agregarProfesion() {
    final currentState = state;

    if (currentState is UsuarioActivo) {
      final nuevoUsuario = currentState.usuario.copyWith(
          profesion: [...currentState.usuario.profesion, 'Profesion ${currentState.usuario.profesion.length + 1}']);
      emit(UsuarioActivo(nuevoUsuario));
    }
  }

  void borrarUsuario() => emit(UsuarioInit());
}
