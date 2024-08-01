import 'dart:async';
import 'package:flutter_bloc/src/blocs/validators.dart';

class Bloc extends Validators {

  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  void Function(String) get changeEmail => _emailController.sink.add;
  void Function(String) get changePassword => _passwordController.sink.add;

  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password => _passwordController.stream.transform(validatePassword);

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}
