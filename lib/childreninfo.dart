import 'package:flutter/material.dart';
import 'package:my_family_app/mainfilesinfo.dart';

class MyChildrenPage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
     return new Scaffold(
            appBar:new AppBar(
            backgroundColor:Color.fromRGBO(58,66,86,0.9),
            title:Text("Children")),
            body:new MainColumn("Children Guide","assets/images/chidren_nature.jpg")
                     );
         }  
}



