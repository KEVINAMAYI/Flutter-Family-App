import 'package:flutter/material.dart';
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:my_family_app/readpage.dart';

class ReadDownloadPage extends StatefulWidget{

  @override
  ReadDownloadPageState createState() {
    return ReadDownloadPageState();
  }
}

class ReadDownloadPageState extends State<ReadDownloadPage> {
  final pdfurl ="http://centrowhite.org.br/files/ebooks/egw-english/books/Letters%20to%20Young%20Lovers.pdf";
  var progressstring=" ";
  bool downloading=false;

  @override
  void initState() {
    super.initState();
    downloadFile();
  }


  Future<void> downloadFile() async{
   
   Dio dio=Dio();
   
   try{


     var dir=await getApplicationDocumentsDirectory();

     await dio.download(pdfurl,"${dir.path}/ltyl.pdf",onProgress:(rec,total){
      
      
      setState((){

        downloading=true;
        progressstring=((rec/total)*100).toStringAsFixed(0)+"%";
      });

     });

   }
   catch(e){
    
    print(e);

   }

   setState((){
     downloading=false;
     progressstring="completed";
   });

  }




  @override
  Widget build(BuildContext context){
     return new Scaffold(
          appBar:new AppBar(
            backgroundColor:Color.fromRGBO(58,66,86,0.9),
            title:Text("Children")),
          body:new Column(
            children: <Widget>[
             Row(
             children: <Widget>[
               Expanded(
                 child:Card(
                   margin:EdgeInsets.all(0.0),
                   clipBehavior:Clip.antiAlias,
                   shape:RoundedRectangleBorder(
                     borderRadius:BorderRadius.only(
                       bottomLeft:Radius.circular(2.0),
                       bottomRight:Radius.circular(2.0),
                     )
                   ),
                   child:SizedBox(
                     height:300.0,
                     child:Stack(
                       children: <Widget>[
                         Positioned.fill(
                           child:new Container(
                           decoration:new BoxDecoration(
                           color:Color.fromRGBO(58,66,86,0.9),
                           image:DecorationImage(
                             colorFilter: new ColorFilter.mode(Color.fromRGBO(58,66,86,0.4).withOpacity(0.3), BlendMode.dstATop),
                             image:AssetImage(
                               "assets/images/chidren_nature.jpg"
                             ),
                             fit:BoxFit.cover,
                           )
                          ),
                         ),
                        ),
                        Positioned(
                          bottom:80.0,
                          left:110.0,
                          child:downloading ? Container(
                          height:120.0,
                          width:200.0,
                          child:Card(
                            color:Colors.black,
                            child:Column(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children: <Widget>[
                                CircularProgressIndicator(),
                                SizedBox(
                                  height:10.0,
                                ),
                                Text("Downloading File : $progressstring",
                                style:TextStyle(
                                color:Colors.white
                                ),)
                              ],
                            ),
                          ),

                         ):Text(" "),
                        ),
                          Positioned(
                             bottom:10.0,
                             left:10.0,
                             child:Column(
                                children: <Widget>[
                                  Text('FEATURED',
                                  style: TextStyle(
                                  color:Colors.white,
                                    fontSize:10.0,
                                    fontWeight:FontWeight.bold,
                                  ),),
                                  Text('CHILDREN GUIDE',
                                  style: TextStyle(
                                   color:Colors.white,
                                    fontSize:20.0,
                                    fontWeight:FontWeight.bold,
                                  ),),
                                  Text('by Kevin Amayi',
                                  style: TextStyle(
                                    color:Colors.white,
                                    fontSize:14.0,
                                    fontWeight:FontWeight.bold,
                                  ),),
                                ],     
                             )
                           )
                       ],
                     ),
                   ),
                 ) 
               ),
             ],
             ),
             Expanded(
               child:ListView(
               children: <Widget>[
               Container(
               padding:const EdgeInsets.all(18.0) ,
               child:Column(
                 children: <Widget>[
                Text("Two persons become acquainted; they are infatuated with each other, and their whole attention is absorbed. Reason is blinded, and judgment is overthrown. They will not submit to any advice or control, but insist on having their own way, regardless of consequence",
                style:TextStyle(
                  color:Color.fromRGBO(58,66,86, 1.0),
                  fontSize:17.0,
                  fontWeight:FontWeight.normal
                ),

                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child:Container(
                      padding:const EdgeInsets.only(left:0.0,right:10.0,top:20.0,bottom: 10.0),
                       child:Container(
                         decoration:new BoxDecoration(
                         color:Color.fromARGB(255, 39, 55, 89), 

                         ),
                         child:Stack(children: <Widget>[       
                         ListTile(
                         
                         onTap:(){

                         },
                         title:Text(
                           'DOWNLOAD',
                           style:TextStyle(
                             color:Colors.white,
                             fontSize:18.0,
                             fontWeight:FontWeight.bold
                           ),
                         ),
                         trailing:Icon(
                           Icons.cloud_download,
                           color:Colors.white
                         ),),
                         
                         ]),
                       )
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child:Container(
                      padding:const EdgeInsets.only(left:0.0,right:10.0,top:7.0,bottom: 10.0),
                       child:Container(
                         decoration:new BoxDecoration(
                         color:Color.fromARGB(255, 39, 55, 89), 

                         ),
                         child:ListTile(
                         onTap:(){
                           Navigator.push(context, new MaterialPageRoute(builder:(context) =>new MyReadPage()));
                                                    },
                                                    title:Text(
                                                      'READ',
                                                      style:TextStyle(
                                                        color:Colors.white,
                                                        fontSize:18.0,
                                                        fontWeight:FontWeight.bold
                                                      ),
                                                    ),
                                                    trailing:Icon(
                                                      Icons.keyboard_arrow_right,
                                                      color:Colors.white,
                                                      size:37.0,
                                                    )
                                                    ),
                                                  )
                                                 ),
                                               )
                                             ],
                                           ),
                                            ],
                                          ) 
                                          ),]
                                          )
                                        )            
                                         ] 
                                         ),
                                    
                                               );
                             }  
                           }
                           
   