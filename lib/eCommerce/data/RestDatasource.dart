import 'dart:async';
import 'package:flutter_app_samples/eCommerce/appTools/network_util.dart';
import 'package:flutter_app_samples/eCommerce/model/User.dart';
import 'dart:io';
import 'dart:convert';
class RestDatasource {
  NetworkUtil _netUtil = new NetworkUtil();
  static final BASE_URL = "https://e-commerce-u201319421.c9users.io";

  /* define routes */
  static final LOGIN_URL = BASE_URL + "/api/auth/login";


  Future<User> login(String email, String password) {
    return _netUtil.post
      (
        "https://e-commerce-u201319421.c9users.io/api/auth/login",
        headers:  {HttpHeaders.contentTypeHeader: "application/json", 'Accept': 'application/json'},
        body: { "email": email,"password": password }
      ).
      then((dynamic res) {
        res = json.decode(res);
        print(res);

      if(res["error"]!="NOT ERROR") throw  new Exception(res["error"]);
      return new User.map(res["user"]);
    });
  }




}