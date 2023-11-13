import 'dart:async';
import 'validators.dart';

class Bloc extends Validators{
  final _email = StreamController();
  final _password = StreamController();

  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;


  Stream get email => _email.stream.transform(validateEmail);
  Stream get password => _password.stream.transform(validatePassword);

  
}