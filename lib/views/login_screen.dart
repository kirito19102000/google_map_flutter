import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  static const route = '/login';
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }

}

class LoginScreenState extends State<StatefulWidget>{
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  late String emailAddress;
  late String password;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'),),
      body: buildLoginForm(),
    );
  }

  Widget buildLoginForm() {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Align(alignment: Alignment.centerLeft, child: new Text("Username",textScaleFactor: 1.75 ),),
          emailField(),
          Align(alignment: Alignment.centerLeft, child: new Text("Password",textScaleFactor: 1.75),),
          passwordField(),
          loginButton()
        ],
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      controller: emailController,
      decoration: InputDecoration(
          icon: Icon(Icons.person),
          labelText: 'Email address'
      ),
      validator: (value) {
        if (!value!.contains('@')) {
          return 'Pls input valid email.';
        }
        return null;
      },
      onSaved: (value) {
        emailAddress = value as String;
      },

    );
  }

  Widget passwordField() {
    return TextFormField(
      controller: passwordController,
      obscureText: true,
      decoration: InputDecoration(
          icon: Icon(Icons.password),
          labelText: 'Password'
      ),
      validator:(value) {
        if (value!.length < 8) {
          return 'Password must be at least 8 characters.';
        }
      },
      onSaved: (value) {
        password = value as String;
      },
    );
  }

  Widget loginButton() {
    return ElevatedButton(
        onPressed: () async {
          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();

            print('$emailAddress, $password');
          }
        },
        child: Text('Login')
    );
  }

  void validate() {

  }
}