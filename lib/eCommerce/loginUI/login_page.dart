import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  /* declarar controladores */
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String _token ="";

  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/logo.png'),
      ),
    );

    void authenticate(){

    }

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      autofocus: false,
      //initialValue: 'alucard@gmail.com',
      decoration: InputDecoration(
        hintText: 'Cuenta de correo',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        prefixIcon:   Padding(
          padding: EdgeInsets.all(0.0),
          child: Icon(Icons.email, color: Colors.red),
        )
      ),
    );

    final password = TextFormField(
      autofocus: false,
      controller: passwordController,
      //initialValue: 'some password',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Contraseña',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        prefixIcon: Padding(
            padding: EdgeInsets.all(0.0),
            child: Icon(
              Icons.lock,color: Colors.red,
            ),
        )
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          //Navigator.of(context).pushNamed(HomePage.tag);
          authenticate();
        },
        padding: EdgeInsets.all(12),
        color: Colors.red,
        child: Text('Iniciar sesión', style: TextStyle(color: Colors.white)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        '¿Olvidaste la contraseña?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel
          ],
        ),
      ),
    );
  }
}
