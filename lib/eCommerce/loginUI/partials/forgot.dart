import 'package:flutter/material.dart';

Align fogotPasswordAl(){
  return Align(
    alignment: Alignment.centerRight,
    child: Padding(
      padding: const EdgeInsets.only(
          top: 16, right: 32
      ),
      child: Text('¿Olvidaste tu contraseña?',
        style: TextStyle(
            color: Colors.grey
        ),
      ),
    ),
  );
}