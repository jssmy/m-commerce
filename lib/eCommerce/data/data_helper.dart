import 'dart:async';
import 'dart:io' as io;

import 'package:path/path.dart';
import 'package:flutter_app_samples/eCommerce/model/User.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';


class DatabaseHelper {
  static final DatabaseHelper _instance = new DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;

  static Database _db;

  /* create dabase connection */
  Future<Database> get db async {
    if(_db != null)
      return _db;
    _db = await initDb();
    return _db;
  }

  DatabaseHelper.internal();

  /* create database */
  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "main.db");
    var theDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return theDb;
  }

 /*create table */
  void _onCreate(Database db, int version) async {
    // When creating the db, create the table
    await db.execute(
        "CREATE TABLE User(id INTEGER PRIMARY KEY, email TEXT, name TEXT,password TEXT, token TEXT");
    print("Created tables");
  }

  Future<int> saveUser(User user) async {
    var dbClient = await db;
    int res = await dbClient.insert("User", user.toMap());
    return res;
  }

  /* in logout delete users */
  Future<int> deleteUsers() async
  {
    var dbClient = await db;
    int res = await dbClient.delete("User");
    return res;
  }

  /* check if user are login */
  Future<bool> isLoggedIn() async {
    var dbClient = await db;
    var res = await dbClient.query("User");
    return res.length > 0? true: false;
  }

  Future<User> currentUser () async {
      var dbClient = await db;
      var res = await dbClient.query("SELECT name,email,_password,token FROM User");
      return res.isNotEmpty ? User.map(res) : null;
  }



}