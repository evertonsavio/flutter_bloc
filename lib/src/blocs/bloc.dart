import 'dart:async';

class Bloc {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  void Function(String) get changeEmail => _emailController.sink.add;
  void Function(String) get changePassword => _passwordController.sink.add;

  Stream<String> get email => _emailController.stream;
  Stream<String> get password => _passwordController.stream;
}
