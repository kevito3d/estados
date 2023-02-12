import 'package:estados/bloc/usuario/usuario_cubit.dart';
import 'package:estados/pages/paina1_page.dart';
import 'package:estados/pages/paina2_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider>[
        BlocProvider<UsuarioCubit>(create: (_) => UsuarioCubit(), lazy: false),
      ],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          'pagina1': (BuildContext context) => const Pagina1Page(),
          'pagina2': (BuildContext context) => const Pagina2Page(),
        },
        initialRoute: 'pagina1',
      ),
    );
  }
}
