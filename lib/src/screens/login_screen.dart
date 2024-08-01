import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final block = Provider.of(context);

    return (
      Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            emailField(block),
            passwordField(block),
            Container(margin: EdgeInsets.only(top: 25)),
            submitButton(block),
          ],
        ),
      )
    );
  }
}

Widget emailField(block) {
  return StreamBuilder(
      stream: block.email,
      builder: (context, snapshot) {
        return TextField(
          onChanged: block.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'abc@something.com',
            labelText: 'Email',
            errorText: snapshot.error?.toString(),
          ),
        );
      }
  );
}

Widget passwordField(block) {
  return StreamBuilder(
      stream: block.password,
      builder: (context, snapshot) {
        return TextField(
          onChanged: block.changePassword,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'password',
            labelText: 'Password',
            errorText: snapshot.error?.toString(),
          ),
        );
      }
  );
}

Widget submitButton(block) {
  return StreamBuilder(
      stream: block.submitValid,
      builder: (context, snapshot) {
        return ElevatedButton(
          onPressed: snapshot.hasData ? (){
            print('Login');
          } : null,
          child: Text('Login'),
        );
      }
  );
}
