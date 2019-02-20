import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdf_viewer/flutter_pdf_viewer.dart';
import 'package:path_provider/path_provider.dart';


/*calling the main method*/
void  main() =>runApp(MyReadPage());

class MyReadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return  new MaterialApp(
     title:"Reading Page",
     home:new HomePage(),
     
         );
       }
     }
     
class HomePage extends StatefulWidget {

  @override
  HomePageState createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {

     Dio dio=Dio();
     var filepath;
     var dir;

     
  @override
  void initState() {

    Future<void> filePath() async {

      
        dir=await getApplicationDocumentsDirectory();        
     }



  }
    
      @override
       Widget build(BuildContext context) {
         return new Scaffold(
           appBar:new AppBar(
             title:Text(
               "Reading Page"
             ),
           ),
           body:new Center(
             child:new Column(
               mainAxisAlignment:MainAxisAlignment.center,
               children: <Widget>[
                 RaisedButton(
                   child:Text(
                     "pdf"
                   ),
                   onPressed:(){

                     FlutterPdfViewer.loadFilePath("${dir.path}/ltyl.pdf");

                   },
                 )
               ],
             ),
           ),
         );
       }
} 