class Usuario {
  final String nombre;
  final int edad;
  final List<String> profesion;

  Usuario({this.nombre = '', this.edad = 0, this.profesion = const []});

  Usuario copyWith({String? nombre, int? edad, List<String>? profesion}) =>
      Usuario(
        nombre: nombre ?? this.nombre,
        edad: edad ?? this.edad,
        profesion: profesion ?? this.profesion,
      );
}
