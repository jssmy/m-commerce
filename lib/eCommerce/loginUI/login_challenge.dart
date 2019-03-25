import 'package:flutter/material.dart';
import 'package:flutter_app_samples/eCommerce/appTools/routes.dart';
import 'package:flutter_app_samples/eCommerce/loginUI/partials/textForm.dart';
import 'package:flutter_app_samples/eCommerce/loginUI/partials/buttonForm.dart';
import 'package:flutter_app_samples/eCommerce/loginUI/partials/forgot.dart';
import 'package:flutter_app_samples/eCommerce/loginUI/partials/header.dart';
import 'package:flutter_app_samples/eCommerce/appTools/loginScreen.dart';
void main() => runApp(LoginApp());


class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Iniciar sesión',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: LoginPage(),
      routes:routesCustom,
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage>{
  final scaffoldKey = new GlobalKey<ScaffoldState>();
   FocusNode _focusNodeEmail;
   FocusNode _focusNodePassword ;
   TextEditingController emailController;
   TextEditingController passwordController;
   LoginScreenPresenter _presenter;
   bool _isLoading = false;
   final formKey = new GlobalKey<FormState>();

  // f45d27
  // f5851f

  @override
  void initState() {
    //SystemChrome.setEnabledSystemUIOverlays([]);
    _focusNodePassword = new FocusNode();
    _focusNodeEmail = new FocusNode();
    emailController = new TextEditingController();
    passwordController = new TextEditingController();
    super.initState();
  }






   @override
   void dispose() {
     // Clean up the focus node when the Form is disposed
    _focusNodeEmail.dispose();
    _focusNodePassword.dispose();
    emailController.dispose();
    passwordController.dispose();
     super.dispose();
   }



  @override
  Widget build(BuildContext context)
  {


    final emailInput          = emailCon(context,emailController,_focusNodeEmail);
    final passwordInput       = passwordCon(context,passwordController,_focusNodePassword);
    final forgotPasswordAlign = fogotPasswordAl();
    final loginButton         = buttonCon(context,emailController,passwordController,scaffoldKey);
    final header              = headerCon(context);
    return Scaffold(
      key: scaffoldKey,
      body: Center(
        child: ListView(
          children: <Widget>[
            header,
            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 62),
              child: Form(
                child: Column(
                  children: <Widget>[
                    emailInput,
                    passwordInput,
                    forgotPasswordAlign,
                    Spacer(),
                    loginButton
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}