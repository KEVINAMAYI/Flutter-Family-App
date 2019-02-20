import 'package:custom_chewie/custom_chewie.dart';
import 'package:flutter/material.dart';
import 'package:my_family_app/main.dart';
import 'package:video_player/video_player.dart';

class MyVideoPage extends StatefulWidget{
  @override
  MyVideoPageState createState() {
    return MyVideoPageState();
  }
}

class MyVideoPageState extends State<MyVideoPage> {

  TargetPlatform targetPlatform;
  VideoPlayerController _controller;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=new VideoPlayerController.network("https://youtu.be/heku_-RWxLY");
  }



Widget buildCard(String url){
  return  Card(
    elevation:8.0,
    margin:new EdgeInsets.symmetric(horizontal:10.0,vertical:5.0),
    shape:new RoundedRectangleBorder(
      borderRadius:BorderRadius.only(
        bottomLeft:Radius.circular(6.0),
        bottomRight:Radius.circular(6.0),
        topLeft:Radius.circular(6.0),
        topRight:Radius.circular(6.0)

      )
    ),
    child:Container(
      
      decoration:BoxDecoration(
        color:Color.fromRGBO(64,75,96,0.9),
        
      ),
      child:ListTile(
    contentPadding:EdgeInsets.symmetric(horizontal:10.0,vertical:7.0),
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
        Icons.arrow_right,
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
            Icon(Icons.more_vert, color: Colors.white, size: 30.0),
            onTap:(){
              setState((){
              _controller=new VideoPlayerController.network(url);
              }
              ); 
            }),
  ),
    ); 



}


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Color.fromRGBO(58,66,86,0.9),
        title:Text(
        'MyVideo Page'
      ),),
      drawer:MyDrawer(),
      body:Column(
        children:<Widget>[
        Container(
        padding:EdgeInsets.all(10.0),     
        child:new Chewie(
        _controller,
        aspectRatio:3/2,
        looping:true
        )
      ),
      Expanded(
        child:Container(
        color:Colors.white,
        child:ListView(
        children: <Widget>[
          buildCard("https://youtu.be/heku_-RWxLY"),
          buildCard("https://youtu.be/heku_-RWxLY"),
          buildCard("https://youtu.be/heku_-RWxLY"),
          buildCard("https://youtu.be/heku_-RWxLY"),
          buildCard("https://youtu.be/heku_-RWxLY"),
          buildCard("https://youtu.be/heku_-RWxLY"),
          buildCard("https://youtu.be/heku_-RWxLY"),          
        ],
      ))
      )
      ]
      ),
    );

  }
}