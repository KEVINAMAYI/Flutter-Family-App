import 'package:flutter/material.dart';
import 'package:my_family_app/mainfilesinfo.dart';

class MyMarriagePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
     return new Scaffold(
            appBar:new AppBar(
            backgroundColor:Color.fromRGBO(58,66,86,0.9),
            title:Text("Marriage")),
            body:new MainColumn("Marriage Guide","assets/images/marriage.jpg")
                     );
           }  
}