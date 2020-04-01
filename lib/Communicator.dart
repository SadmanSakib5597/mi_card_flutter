import 'package:flutter/services.dart';

import 'User.dart';

class Communicator{

  static const platform = const MethodChannel('demo.bashir.com/info');

  void Print(){
    print("username: " + User.userName +"\npassword: " + User.password);
  }

  Future<bool> _getMessage() async {
    /*var sendMap = <String, dynamic> {
      User.userName : User.password,
    };*/

    //String value;
    bool result;

    try {
      result = await platform.invokeMethod('getMessage', User);
    } catch (e) {
      print(e);
    }

    return result;
  }
}