import 'package:flutter/material.dart';
import 'package:my_family_app/aboutpage.dart';
import 'package:my_family_app/quotepage.dart';
import 'package:my_family_app/settingspage.dart';
import 'package:my_family_app/bookpage.dart';
import 'package:my_family_app/videopage.dart';
import 'package:my_family_app/audiopage.dart';
import 'package:my_family_app/familyinfo.dart';
import 'package:my_family_app/datinginfo.dart';
import 'package:my_family_app/childreninfo.dart';
import 'package:my_family_app/marriageinfo.dart';
import 'package:my_family_app/imagepage.dart';




/*calling the main method*/
void  main() =>runApp(MyFamilyApp());


class MyFamilyApp extends StatelessWidget
{

  Widget build(BuildContext build)
  {
      return MaterialApp(
        title:'Family',
        home:new FamilyApp(),
      );

  }

}

/**
 *This class creates an instance of drawer 
 */
class MyDrawer extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    
     return Drawer(
         child:new Container(
            color:Color.fromRGBO(58,66,86, 1.0),
           child:ListView( 
              
             padding:EdgeInsets.all(0.0),
             children: <Widget>[
               DrawerHeader(  
                 child:FloatingActionButton(
                   
                   backgroundColor:Color.fromRGBO(58,66,86, 1.0),
                   onPressed:(){
                     Navigator.pop(context);
                   },
                   child:new Icon(
                     Icons.keyboard_arrow_left,
                     color:Colors.white,
                     size:20.0
                   ),
                 ),  
                 decoration:BoxDecoration(
                   image:new DecorationImage(
                     image:AssetImage("assets/images/dating_main.jpg"),
                     fit:BoxFit.cover
                   )
                 ),

               ),
               ListTile(
                 leading:Icon(
                   Icons.collections_bookmark,
                   color:Colors.white,
                   ),
                 title:RichText(
                  text:TextSpan(
                  text:'Suggested Books',
                 style:TextStyle(
                   color:Colors.white)
                )),
                 onTap:(){

                   Navigator.pop(context);
                   Navigator.push(context, new MaterialPageRoute(builder:(context) => new MyBookPageImplementation())); 
                    
                 },


               ),
               ListTile(
                  leading:Icon(
                   Icons.video_library,
                   color:Colors.white,
                   ),
                 title:RichText(
                  text:TextSpan(
                  text:'Video Sermons',
                 style:TextStyle(
                   color:Colors.white)
                )),
                 onTap:(){

                  
                  Navigator.pop(context);
                  Navigator.push(context, new MaterialPageRoute(builder:(context) =>new MyVideoPage())); 

                 },



               ),
                ListTile(
                  leading:Icon(
                   Icons.comment,
                   color:Colors.white,
                   ),
                 title:RichText(
                  text:TextSpan(
                  text:'Image Gallery',
                 style:TextStyle(
                   color:Colors.white)
                )),
                 onTap:(){

                  
                  Navigator.pop(context);
                  Navigator.push(context, new MaterialPageRoute(builder:(context) =>new MyImagePage())); 

                 },
               ),
               ListTile(
                  leading:Icon(
                   Icons.comment,
                   color:Colors.white,
                   ),
                 title:RichText(
                  text:TextSpan(
                  text:'Family Quotes',
                 style:TextStyle(
                   color:Colors.white)
                )),
                 onTap:(){

                  
                  Navigator.pop(context);
                  Navigator.push(context, new MaterialPageRoute(builder:(context) =>new MyQuotePage())); 

                 },
                 

               ),
               ListTile(
                 leading:Icon(
                   Icons.queue_music,
                   color:Colors.white,
                   ),
                title:RichText(
                  text:TextSpan(
                  text:'Audio Sermons',
                 style:TextStyle(
                   color:Colors.white)
                )),
                onTap:(){

                  Navigator.pop(context);
                  Navigator.push(context, new MaterialPageRoute(builder:(context) =>new MyAudioPage()));
                  
                },
               ),
               ListTile(
                 leading:Icon(
                   Icons.info_outline,
                   color:Colors.white,
                   ),
                title:RichText(
                  text:TextSpan(
                  text:'About',
                 style:TextStyle(
                   color:Colors.white)
                )),
                onTap:(){
                  
                  Navigator.pop(context);
                  Navigator.push(context, new MaterialPageRoute(builder:(context) =>new MyAboutPage()));
                  
                  

                },
               ),
               ListTile(
                 leading:Icon(
                   Icons.settings,
                   color:Colors.white,
                   ),
                title:RichText(
                  text:TextSpan(
                  text:'Settings',
                 style:TextStyle(
                   color:Colors.white)
                )),
                onTap:(){
                  
                  Navigator.pop(context);
                  Navigator.push(context, new MaterialPageRoute(builder:(context) => new MySettingsPage()));
                 

                },
               )
             ],
             
           )
           ),
         );

  }


}

class FamilyApp extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
   {
     return new Scaffold(
       appBar:new AppBar(
         backgroundColor:Color.fromRGBO(58,66,86,0.9),
         title:Text('Family'),
        
       ),
        
        drawer:new MyDrawer(),
        body:Container(
          alignment:Alignment.center,
          padding:EdgeInsets.only(left:50.0,right:50.0,bottom:50.0,top:20.0),
          child:Column(
            
            children: <Widget>[
              GestureDetector(
              child:Padding(
                padding:EdgeInsets.only(bottom:10.0),
                child:Column(
                children:<Widget>[
                Row(
                crossAxisAlignment:CrossAxisAlignment.center,
                mainAxisAlignment:MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    clipBehavior:Clip.antiAlias,
                    shape:RoundedRectangleBorder(
                      borderRadius:BorderRadius.only(
                        bottomLeft:Radius.circular(6.0),
                        bottomRight:Radius.circular(6.0),
                        topLeft:Radius.circular(6.0),
                        topRight:Radius.circular(6.0)
                      )
                    ),
                    child:SizedBox(
                          height:90.0,
                          width:90.0,
                          child:Stack(
                            children: <Widget>[
                              Positioned.fill(
                                child:Image.asset(
                                  "assets/images/family1.jpg",
                                  fit:BoxFit.cover, 
                                ),
                              ),  
                            ],
                          ),
                        ),
                        
                    )
                  
                ],
                ),
                Row(
                  crossAxisAlignment:CrossAxisAlignment.center,
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Family and Marriage",
                    style:TextStyle(
                      fontSize:28.0,
                      fontWeight:FontWeight.w700,
                      color:Color.fromARGB(255, 39, 55, 89), 
                    ),)
                  ],
                )]
                )
              ),
              ),
              
              Row(
                children: <Widget>[
              GestureDetector(
                 child:Card(
                    clipBehavior:Clip.antiAlias,
                    shape:RoundedRectangleBorder(
                      borderRadius:BorderRadius.only(
                        bottomLeft:Radius.circular(6.0),
                        bottomRight:Radius.circular(6.0),
                        topLeft:Radius.circular(6.0),
                        topRight:Radius.circular(6.0)
                      )
                    ),
                    child:Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height:120.0,
                          width:120.0,
                          child:Stack(
                            children: <Widget>[
                              Positioned.fill(
                                child:Image.asset(
                                  "assets/images/dating.jpg",
                                  fit:BoxFit.cover, 
                                ),
                              ),  
                            ],
                          ),
                        ),
                      Padding(
                        padding:EdgeInsets.only(left:4.0,top:8.0,right:2.0,bottom:6.0),
                      child:Row(
                      children: <Widget>[
                        Padding(
                        padding:EdgeInsets.only(right:43.0),
                        child:Text("Dating",
                        style:TextStyle(
                          fontWeight:FontWeight.w700,
                          fontSize:16.0,
                          color:Color.fromARGB(255, 39, 55, 89),
                          
                        ),),),
                        Icon(
                          Icons.favorite,
                          size:18.0,
                        )
                      ],
                      
                        ),
                        
                        ),
                        Padding(
                        padding:EdgeInsets.only(
                          left:3.0,top:0.0,bottom:6.0
                        ),
                        child:Text(
                          "principles of dating",
                          style:TextStyle(
                            fontSize:13.0,
                            color:Color.fromARGB(235, 39, 55, 89),
                            fontWeight:FontWeight.w700

                          ))
                        )

                      ],
                     
                      
                    ),

                  ),
                  onTap:(){
                    
                    Navigator.push(context, new MaterialPageRoute(builder:(context) =>new MyDatingPage()));



                  },),

                  GestureDetector(
                    child:Padding(
                    padding:EdgeInsets.only(left:40.0),
                    child:Card(
                    clipBehavior:Clip.antiAlias,
                    shape:RoundedRectangleBorder(
                      borderRadius:BorderRadius.only(
                        bottomLeft:Radius.circular(6.0),
                        bottomRight:Radius.circular(6.0),
                        topLeft:Radius.circular(6.0),
                        topRight:Radius.circular(6.0)
                      )
                    ),
                    child:Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height:120.0,
                          width:120.0,
                          child:Stack(
                            children: <Widget>[
                              Positioned.fill(
                                child:Image.asset(
                                  "assets/images/children_playing_1.jpg",
                                  fit:BoxFit.cover, 
                                ),
                              ),  
                            ],
                          ),
                        ),
                      Padding(
                        padding:EdgeInsets.only(left:4.0,top:8.0,right:2.0,bottom:6.0),
                      child:Row(
                      children: <Widget>[
                        Padding(
                        padding:EdgeInsets.only(right:40.0),
                        child:Text("Child",
                        style:TextStyle(
                          fontWeight:FontWeight.w700,
                          fontSize:16.0,
                          color:Color.fromARGB(255, 39, 55, 89),
                        ),),),
                        Icon(
                          Icons.group,
                          size:18.0,
                        )
                      ],
                      
                        ),
                        
                        ),
                        Padding(
                        padding:EdgeInsets.only(
                          left:4.0,top:0.0,bottom:6.0
                        ),
                        child:Text(
                          "Rearing Children",
                          style:TextStyle(
                            fontSize:13.0,
                            color:Color.fromARGB(235, 39, 55, 89),
                            fontWeight:FontWeight.w700

                          ))
                        )

                      ],
                     
                      
                    ),
                    )
                  ),
                  onTap:(){
                    
                    Navigator.push(context, new MaterialPageRoute(builder:(context) =>new MyChildrenPage()));



                  }),
                ],
              ),
              
              Padding(
                padding:EdgeInsets.only(top:26.0) ,
              child:Row(
                 children:<Widget>[
                   GestureDetector(
                    child:Card(
                    clipBehavior:Clip.antiAlias,
                    shape:RoundedRectangleBorder(
                      borderRadius:BorderRadius.only(
                        bottomLeft:Radius.circular(6.0),
                        bottomRight:Radius.circular(6.0),
                        topLeft:Radius.circular(6.0),
                        topRight:Radius.circular(6.0)
                      )
                    ),
                    child:Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height:120.0,
                          width:120.0,
                          child:Stack(
                            children: <Widget>[
                              Positioned.fill(
                                child:Image.asset(
                                  "assets/images/marriage.jpg",
                                  fit:BoxFit.cover, 
                                ),
                              ),  
                            ],
                          ),
                        ),
                      Padding(
                        padding:EdgeInsets.only(left:4.0,top:8.0,right:2.0,bottom:6.0),
                      child:Row(
                      children: <Widget>[
                        Padding(
                        padding:EdgeInsets.only(right:30.0),
                        child:Text("Marriage",
                        style:TextStyle(
                          fontWeight:FontWeight.w700,
                          fontSize:16.0,
                          color:Color.fromARGB(255, 39, 55, 89),
                        ),),),
                        Icon(
                          Icons.favorite,
                          size:18.0,
                        )
                      ],
                      
                        ),
                        
                        ),
                        Padding(
                        padding:EdgeInsets.only(
                          left:4.0,top:0.0,bottom:6.0
                        ),
                        child:Text(
                          "About Marriage",
                          style:TextStyle(
                            fontSize:13.0,
                            color:Color.fromARGB(235, 39, 55, 89),
                            fontWeight:FontWeight.w700

                          ))
                        )

                      ],
                     
                      
                    ),

                  ),
                  onTap:(){
                    
                    Navigator.push(context, new MaterialPageRoute(builder:(context) =>new MyMarriagePage()));



                  }),
                  GestureDetector(
                    child:Padding(
                    padding:EdgeInsets.only(left:40.0),
                    child:Card(
                    clipBehavior:Clip.antiAlias,
                    shape:RoundedRectangleBorder(
                      borderRadius:BorderRadius.only(
                        bottomLeft:Radius.circular(6.0),
                        bottomRight:Radius.circular(6.0),
                        topLeft:Radius.circular(6.0),
                        topRight:Radius.circular(6.0)
                      )
                    ),
                    child:Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height:120.0,
                          width:120.0,
                          child:Stack(
                            children: <Widget>[
                              Positioned.fill(
                                child:Image.asset(
                                  "assets/images/family_eating.jpg",
                                  fit:BoxFit.cover, 
                                ),
                              ),  
                            ],
                          ),
                        ),
                      Padding(
                        padding:EdgeInsets.only(left:4.0,top:8.0,right:2.0,bottom:6.0),
                      child:Row(
                      children: <Widget>[
                        Padding(
                        padding:EdgeInsets.only(right:43.0),
                        child:Text("Family",
                        style:TextStyle(
                          fontWeight:FontWeight.w700,
                          fontSize:16.0,
                          color:Color.fromARGB(255, 39, 55, 89),
                        ),),),
                        Icon(
                          Icons.group,
                          size:18.0,
                        )
                      ],
                      
                        ),
                        
                        ),
                        Padding(
                        padding:EdgeInsets.only(
                          left:4.0,top:0.0,bottom:6.0
                        ),
                        child:Text(
                          "Happy Family",
                          style:TextStyle(
                            fontSize:13.0,
                            color:Color.fromARGB(235, 39, 55, 89),
                            fontWeight:FontWeight.w700

                          ))
                        )

                      ],
                     
                      
                    ),
                    )
                  ),
                  onTap:(){

            Navigator.push(context, new MaterialPageRoute(builder:(context) =>new MyFamilyPage()));



                  },
                  )]
              ))
            ],
          ),
         ),
     );

  }


}