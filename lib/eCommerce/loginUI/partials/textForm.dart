import 'package:flutter/material.dart';
import 'package:flutter_app_samples/eCommerce/loginUI/partials/boxShadowCustom.dart';

/* containers */
Container emailCon (BuildContext context,TextEditingController emailController, FocusNode _focusNodeEmail){
  return Container(
      width: MediaQuery.of(context).size.width/1.2,
      height: 45,
      padding: EdgeInsets.only(
          top: 4,left: 16, right: 16, bottom: 4
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular(50)
          ),
          color: Colors.white,
          boxShadow: [
            boxShadowCustom
          ]
      ),
      child: email(emailController,_focusNodeEmail)
  );

}

/* textform */
Container passwordCon(BuildContext context, TextEditingController passwordController,FocusNode _focusNodePassword){
  return Container(
      width: MediaQuery.of(context).size.width/1.2,
      height: 45,
      margin: EdgeInsets.only(top: 32),
      padding: EdgeInsets.only(
          top: 4,left: 16, right: 16, bottom: 4
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular(50)
          ),
          color: Colors.white,
          boxShadow: [
            boxShadowCustom
          ]
      ),
      child:password(passwordController,_focusNodePassword)
  );
}

TextFormField email (TextEditingController emailController,FocusNode _focusNodeEmail ) {
  return TextFormField(
    controller: emailController,
    focusNode: _focusNodeEmail,
    autofocus: false,
    decoration: InputDecoration(
      border: InputBorder.none,
      icon: Icon(Icons.email,
        color: Colors.grey,
      ),
      hintText: 'Correo electrónico',
    ),
  );
}

TextFormField password(TextEditingController passwordController,FocusNode _focusNodePassword){
  return TextFormField(
    controller: passwordController,
    focusNode: _focusNodePassword,
    autofocus: false,
    obscureText: true,
    decoration: InputDecoration(
      border: InputBorder.none,
      icon: Icon(Icons.lock,
        color: Colors.grey,
      ),
      hintText: 'Contraseña',
    ),
  );
}

