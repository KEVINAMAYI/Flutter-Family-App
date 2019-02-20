import 'package:flutter/material.dart';
import 'package:my_family_app/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_family_app/imagefullscreen.dart';


class MyQuotePage extends StatefulWidget{
  @override
  MyQuotePageState createState() {
    return new MyQuotePageState();
  }
}

class MyQuotePageState extends State<MyQuotePage> {

  StreamSubscription<QuerySnapshot> streamSubscription;

  List<DocumentSnapshot> quotelist;

  final CollectionReference collectionReference=Firestore.instance.collection("Quotes");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    streamSubscription=collectionReference.snapshots().listen((datasnapshot){
      setState((){
        quotelist=datasnapshot.documents;



      }); 
    });
  }

  @override
  void dispose() {
    streamSubscription?.cancel();
    // TODO: implement dispose
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Color.fromRGBO(58,66,86,0.9),
        title:Text(
        'Images'
      ),),
      drawer:new MyDrawer(),
      body:quotelist !=null?
      new StaggeredGridView.countBuilder(
        padding:const EdgeInsets.all(8.0),
        crossAxisCount:4,
        itemCount:quotelist.length,
        itemBuilder:(context,index){
          String imagepath=quotelist[index].data['url'];
          return new Material(
            elevation:8.0,
            borderRadius:new BorderRadius.all(
              new Radius.circular(
               8.0 
              )
            ),
            child: new InkWell(
              onTap:(){
                Navigator.push(context, new MaterialPageRoute(
                  builder:(context){
                    return new FullScreenImagePage(imagepath);
                  }
                ));
              },
              child:new Hero(
                tag:imagepath,
                child:new FadeInImage(
                  image:new NetworkImage(imagepath),
                  fit:BoxFit.cover,
                  placeholder:new AssetImage(
                    "assets/images/placeholder.jpg"
                  ),
                ),
              ),
            ),
          );
        },
        staggeredTileBuilder:(index)=>new StaggeredTile.count(2, index.isEven?2:3),
        mainAxisSpacing:8.0,
        crossAxisSpacing:8.0,
      ):new Center(
        child:new CircularProgressIndicator(),
      )
    );
  }
}