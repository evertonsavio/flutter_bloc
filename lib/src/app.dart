import 'package:flutter/material.dart';
import 'package:flutter_bloc/src/screens/login_screen.dart';
import 'package:flutter_bloc/src/blocs/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
