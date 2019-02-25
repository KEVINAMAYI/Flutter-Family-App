import 'package:chewie/chewie.dart';
import 'package:chewie/src/chewie_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:my_family_app/main.dart';

class MyVideoPage extends StatefulWidget {
  MyVideoPage({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _MyVideoPageState();
  }
}

class _MyVideoPageState extends State<MyVideoPage> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;
  ChewieController _chewieController;
  var videourl="https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4";



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
        _videoPlayerController1 = VideoPlayerController.network(url);
        _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController1,
        aspectRatio: 3 / 2,
        autoPlay: true,
        looping: true,
        materialProgressColors: ChewieProgressColors(
        playedColor: Colors.red,
        handleColor: Colors.blue,
        backgroundColor: Colors.grey,
        bufferedColor: Colors.lightGreen,
      ),
      placeholder: Container(
        color: Colors.grey,
      ),  
    );

     }); 
       }),
  ),
    ); 



}

  @override
  void initState() {
    super.initState();
        
        _videoPlayerController1 = VideoPlayerController.network(videourl);
        _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController1,
        aspectRatio: 3 / 2,
        autoPlay: true,
        looping: true,
        materialProgressColors: ChewieProgressColors(
        playedColor: Colors.red,
        handleColor: Colors.blue,
        backgroundColor: Colors.grey,
        bufferedColor: Colors.lightGreen,
      ),
      placeholder: Container(
        color: Colors.grey,
      ),  
    );
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: widget.title,
      theme: ThemeData.light().copyWith(
        platform: _platform ?? Theme.of(context).platform,
        ),
        home:Scaffold(
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
        child:Chewie(
                  controller: _chewieController,
                 ),
      ),
      Expanded(
        child:Container(
        color:Colors.white,
        child:ListView(
        children: <Widget>[
          buildCard('http://dl.tehmovies.pro/94/series/macgyver/s3/Macgyver.S03E09.480p.WEB.RMT.mkv'),
          buildCard("http://dl.tehmovies.pro/94/series/macgyver/s3/Macgyver.S03E09.480p.WEB.RMT.mkv"),
          buildCard("http://dl.tehmovies.pro/94/series/macgyver/s3/Macgyver.S03E09.480p.WEB.RMT.mkv"),
          buildCard("http://dl.tehmovies.pro/94/series/macgyver/s3/Macgyver.S03E09.480p.WEB.RMT.mkv"),
          buildCard("http://dl.tehmovies.pro/94/series/macgyver/s3/Macgyver.S03E09.480p.WEB.RMT.mkv"),
          buildCard("http://dl.tehmovies.pro/94/series/macgyver/s3/Macgyver.S03E09.480p.WEB.RMT.mkv"),
          buildCard("http://dl.tehmovies.pro/94/series/macgyver/s3/Macgyver.S03E09.480p.WEB.RMT.mkv"),          
        ],
      ))
      )
      ]
      ),
      ),
  
    );
  }
}