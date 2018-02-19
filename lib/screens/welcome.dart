import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zone_booker/base/constants.dart';


class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => new _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body:new Center(
            child: new Container(
                margin: const EdgeInsets.symmetric(horizontal: 24.0),
                child: new Image(
                    image: new AssetImage('images/booking.png')))));
  }

  Future<String> checkForToken()async{
    var sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(TOKEN);
  }

  @override
  void initState() {
    super.initState();
    checkForToken().then((token){
      if(token == null){
        Navigator.of(context).pushNamed("/signin");
      }
      else{
        //TODO navigate to main
      }
    });
  }
}
