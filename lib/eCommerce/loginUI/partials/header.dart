import 'package:flutter/material.dart';

Container headerCon(BuildContext context){
  return Container(
    padding: EdgeInsets.only(top: 5),
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height/3.5,
    decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.red,
            Colors.red
          ],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(90),


        )
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Spacer(),
        Align(
          alignment: Alignment.center,
          child: Icon(Icons.graphic_eq,
            size: 90,
            color: Colors.white,
          ),
        ),
        Spacer(),

        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 32,
            ),
            child: Text('Comprar es divertido ;)',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
              ),
            ),
          ),
        ),
      ],
    ),
  );
}