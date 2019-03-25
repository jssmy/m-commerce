class User {
  String _name;
  String _email;
  String _password;
  String _token;
  User(this._name,this._email, this._password,this._token);

  User.map(dynamic obj) {
    this._name       =   obj["name"];
    this._email     =   obj["email"];
    this._password  =   obj["password"];
    this._token     =   obj["token"];
  }

  String get email    => _email;
  String get password => _password;
  String get token    => _token;
  String get name     => _name;

  Map<String, dynamic> toMap() {
    var map = new Map<String, String>();
    map["name"]     = _name;
    map["email"]    = _email;
    map["password"] = _password;
    map["token"]    = _token;
    return map;
  }
}