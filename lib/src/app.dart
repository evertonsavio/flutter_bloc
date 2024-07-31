import 'package:flutter/material.dart';
import 'package:flutter_bloc/src/screens/login_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: LoginScreen(),
      )
    );
  }
}

// Minha primeira experiencia tecnica foi em set/2008 na IBM, com servidores windows, infra, etc, T.I.
// Ja em programação remunerado foi 2012, como freelancer em pequenos projetos em C++. Não saberia dizer o mês nesse caso.