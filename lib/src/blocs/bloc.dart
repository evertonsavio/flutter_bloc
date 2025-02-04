import 'dart:async';
import 'package:flutter_bloc/src/blocs/validators.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Validators {

  //final _emailController = StreamController<String>.broadcast();
  //final _passwordController = StreamController<String>.broadcast();
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password => _passwordController.stream.transform(validatePassword);
  Stream<bool> get submitValid => Rx.combineLatest2(email, password, (e, p) => true);

  void Function(String) get changeEmail => _emailController.sink.add;
  void Function(String) get changePassword => _passwordController.sink.add;

  submit() {
    final validEmail = _emailController.value;
    final validPassword = _passwordController.value;

    print('Email is $validEmail');
    print('Password is $validPassword');
  }

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}
