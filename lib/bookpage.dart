import 'package:flutter/material.dart';
import 'package:my_family_app/main.dart';
import 'package:my_family_app/read_downloadbook.dart';

 class MyBookPageImplementation extends StatefulWidget {  
  @override
  _MyBookPageImplementationState createState() => _MyBookPageImplementationState();
}

class _MyBookPageImplementationState extends State<MyBookPageImplementation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromRGBO(58,66,86,1.0),
      appBar:topAppBar,
      drawer:new MyDrawer(),
      body:makeBody()
      
    );
  }

  final topAppBar=AppBar(
    elevation:0.1,
    backgroundColor:Color.fromRGBO(58,66,86, 1.0),
    title:Text("Books"),
    actions: <Widget>[
      IconButton(
        icon:Icon(
          Icons.list,
          color:Colors.white70, 
        ),
        onPressed:null,
      )
    ],
  );

 makeBody(){
    return Container(
    child:ListView.builder(
      scrollDirection:Axis.vertical,
      shrinkWrap:true,
      itemCount:15,
      itemBuilder:(BuildContext context,int index)=>makeCard(),
    ),
  );
  
  }

   makeCard(){
   return  Card(
    elevation:8.0,
    margin:new EdgeInsets.symmetric(horizontal:10.0,vertical:6.0),
    child:Container(
      decoration:BoxDecoration(
        color:Color.fromRGBO(64,75,96,0.9),
        
      ),
      child:ListTile(
    contentPadding:EdgeInsets.symmetric(horizontal:20.0,vertical:10.0),
    leading:Container(
      padding:EdgeInsets.only(
        right:12.0
      ),
      decoration:new BoxDecoration(
        border:new Border(
          right:new BorderSide(
            width:1.0,color:Colors.white24
          )
        )
      ),
      child:Icon(
        Icons.book,
        color:Colors.white
      ),
    ),
    title:Text(
      "Introduction to Family Life",
      style:TextStyle(
        color:Colors.white,
        fontWeight:FontWeight.bold
      )
    ),
    subtitle:Row(
      children: <Widget>[
        Icon(
          Icons.linear_scale,
          color:Colors.white
        ),
        Text(
          "All about Family",
          style:TextStyle(
            color:Colors.white
          ),
        )
      ],
    ),
      trailing:
            Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
            onTap:(){

              Navigator.push(context, new MaterialPageRoute(builder:(context) =>new ReadDownloadPage())); 


            }),
  ),
    );
    
   }
}