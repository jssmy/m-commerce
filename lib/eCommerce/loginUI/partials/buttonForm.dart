import 'package:flutter/material.dart';
import 'package:flutter_app_samples/eCommerce/loginUI/partials/boxShadowCustom.dart';
import 'package:flutter_app_samples/eCommerce/data/RestDatasource.dart';
import 'package:flutter_app_samples/eCommerce/model/User.dart';
import 'package:flutter_app_samples/eCommerce/appTools/appTools.dart';
final bool _isLoading=false;
Container buttonCon(BuildContext context,TextEditingController emailController,TextEditingController passwordController,final scaffoldKey){
  return Container(
    decoration: BoxDecoration(
        boxShadow: [
        boxShadowCustom
        ]
    ),
    width: MediaQuery.of(context).size.width/1.2,
    child: login(context,emailController,passwordController,scaffoldKey)
  );
}

RaisedButton login(BuildContext context,TextEditingController emailController, TextEditingController passwordController,final scaffoldKey)
{

  return RaisedButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    onPressed: ()
    {

      RestDatasource rest = new RestDatasource();

      rest.login(emailController.text, passwordController.text).then((User user) {
        Navigator.pushNamed(context,"home.app");
      }).catchError((e){
        showSnackBar(e.toString(),scaffoldKey);
      });


      //_presenter.doLogin(emailController.text, passwordController.text);

    },
    padding: EdgeInsets.all(15),
    color: Colors.red,
    child: Text('Iniciar sesión'.toUpperCase(),
      style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
      ),
    ),
  );
}



