import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> with ValidationMixin{
  final formStateKey = GlobalKey<FormState>();

  String email = '', password = '';
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Form(
        key: formStateKey,
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
            ),
            submitButton(),
          ],
        ),
      ),
    );
  }

  emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration:
          InputDecoration(hintText: 'abc@gmail.com', labelText: 'Email'),
      validator: validateEmail,
      onSaved: (val) => email = val,
    );
  }

  passwordField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'password'),
      obscureText: true,
      validator: validatePassword,
      onSaved: (val) => password = val,
    );
  }

  submitButton() {
    return RaisedButton(
      child: Text('Submit'),
      color: Colors.blue,
      onPressed: () {
        var isValidated = formStateKey.currentState.validate();
        print(isValidated);
        if (isValidated) {
          formStateKey.currentState.save();
          print('Values are $email and $password');
        }
      },
    );
  }
}
