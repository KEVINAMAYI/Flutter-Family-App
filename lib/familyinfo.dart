import 'package:flutter/material.dart';
import 'package:my_family_app/mainfilesinfo.dart';

class MyFamilyPage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
     return new Scaffold(
            appBar:new AppBar(
            backgroundColor:Color.fromRGBO(58,66,86,0.9),
            title:Text("Family")),
            body:new MainColumn("Family Guide","assets/images/family_nature_1.jpg")
                     );
           }  
}