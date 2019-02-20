import 'package:flutter/material.dart';
import 'package:my_family_app/main.dart';

class MySettingsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Color.fromRGBO(58,66,86,0.9),
        title:Text(
        'MySettings Page'
      ),),
      drawer:new MyDrawer(),
      body:Center(
        child:Text(
          'My Settings Page'
        ),
      ),
    );

  }

}