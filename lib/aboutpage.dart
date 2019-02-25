import 'package:flutter/material.dart';
import 'package:my_family_app/main.dart';

class MyAboutPage extends StatelessWidget{

final String _fullName="Kevin Amayi";
final String _status="Developer";
final String _bio="";
final String _followers="173";
final String _posts="13";
final String _scores="450";


Widget buildCoverImage(Size screenSize){
return Container(
  height:screenSize.height/2.6,
  decoration:BoxDecoration(
    image:DecorationImage(
      image:AssetImage(
        "assets/images/amayisbackground.jpg"
      ),
      fit:BoxFit.cover,
    )

  ),

);

}


Widget buildProfileImage(){
  return Center(
    child:Container(
      margin:EdgeInsets.only(bottom:0,top:80.0),
      width:130.0,
      height:130.0,
      decoration:BoxDecoration(
        image:DecorationImage(
          image:AssetImage(
          "assets/images/amayisbackground.jpg"
        ),
        fit:BoxFit.cover
        ),
        borderRadius:BorderRadius.circular(80.0),
        border:Border.all(
          color:Colors.white,
          width:5.0
        )
      ),
     ),
  );
}

Widget builldFullName(){
  TextStyle _nameTextStyle=TextStyle(
    fontFamily:'Roboto',
    color:Colors.black,
    fontSize:28.0,
    fontWeight:FontWeight.w700,
  );

  return Text(
    _fullName,
    style:_nameTextStyle
  );
}


Widget buildStatus(BuildContext context){
  return Container(
    margin:EdgeInsetsDirectional.only(top:20.0,bottom:5.0),
    padding:EdgeInsets.symmetric(vertical:4.0,horizontal: 6.0),
    decoration:BoxDecoration(
      color:Theme.of(context).scaffoldBackgroundColor,
      borderRadius:BorderRadius.circular(4.0)
    ),
    child:Text(
      _status,
      style:TextStyle(
        fontFamily:'Spectral',
        color:Colors.black,
        fontSize:20.0,
        fontWeight:FontWeight.bold
      )
    ),

  );

}

Widget buildStatusItem(String label,String count){

  TextStyle _statusLabelTextStyle=TextStyle(
    fontFamily:'Roboto',
    color:Colors.black54,
    fontSize:24.0,
    fontWeight:FontWeight.bold,
  );

   TextStyle _statusCountTextStyle=TextStyle(
    color:Colors.black54,
    fontSize:24.0,
    fontWeight:FontWeight.bold,
  );
 
 return Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: <Widget>[
            Text(
              count,
              style:_statusCountTextStyle,
            ),
            Text(
              label,
              style:_statusLabelTextStyle,
            )
          ],
        );

}

Widget buildStatusContainer(){
  TextStyle _statusLabelTextStyle=TextStyle(
    fontFamily:'Roboto',
    color:Colors.black54,
    fontSize:24.0,
    fontWeight:FontWeight.bold,
  );

   TextStyle _statusCountTextStyle=TextStyle(
    color:Colors.black54,
    fontSize:24.0,
    fontWeight:FontWeight.bold,
  );

  return Container(
    height:60,
    margin:EdgeInsets.only(top: 6.0),
    decoration:BoxDecoration(
      color:Color(0XFFEFF457),
    ),
    child:Row(
      mainAxisAlignment:MainAxisAlignment.spaceAround,
      children: <Widget>[
        buildStatusItem("Followers", _followers),
        buildStatusItem("Posts", _posts),
        buildStatusItem("Scores", _scores),

      ],
    ),
  );
}


Widget buildBio(BuildContext context){

  TextStyle bioTextStyle=TextStyle(
    fontFamily:'Spectral',
    fontWeight:FontWeight.w500,
    fontStyle:FontStyle.italic,
    fontSize:16.0,
    color:Color(0XFF799497)
  );

  return Container(
   color:Theme.of(context).scaffoldBackgroundColor,
   padding:EdgeInsets.all(8.0),
   child:Text(
     _bio,
     textAlign:TextAlign.center,
     style:bioTextStyle
   ),
  );

}

Widget buildSeperator(Size screenSize){
  return Container(
    width:screenSize.width/1.6,
    height:2.0,
    color:Colors.black54,
    margin:EdgeInsets.only(top:4.0)
    ,

  );
}

Widget buildGetInTouch(BuildContext context){
    return Container(
      margin:EdgeInsets.only(bottom:10.0),
      color:Theme.of(context).scaffoldBackgroundColor,
      padding:EdgeInsets.only(top:8.0),
      child:Text(
       "Get in Touch With ${_fullName.split(" ")[0]},",
     style:TextStyle(
       fontFamily:"Roboto",
       fontSize:16.0,
       fontWeight:FontWeight.bold

     ),
    ),

  );

}

Widget buildButtons(){
 
 return Padding(
   padding:EdgeInsets.symmetric(vertical:8.0,horizontal:16.0),
   child:Row(
     children: <Widget>[
       Expanded(
         child:InkWell(
           onTap:()=>print("Followed"),
           child:Container(
             height:40.0,
             decoration:BoxDecoration(
               border:Border.all(

               ),
               color:Color(0XFF404A5C)
             ),
             child:Center(
                  child: Text(
                 "FOLLOW",
                 style:TextStyle(
                   color:Colors.white,
                   fontWeight:FontWeight.w600
                 )
               ),
             ),
           ),
         ),
       ),
       SizedBox(
         width:10.0,
       ),
       Expanded(
         child:InkWell(
           onTap:()=>print("Message"),
           child:Container(
             height:40.0,
             decoration:BoxDecoration(
               border:Border.all()
             ),
             child:Center(
               child:Padding(
                 padding:EdgeInsets.all(10.0),
                 child:Text(
                   "MESSAGE",
                   style:TextStyle(
                     fontWeight:FontWeight.w600

                   )

                 ),
               ),
             ),
           )

         )
       )
     ],

   ),
 );

}


  @override
  Widget build(BuildContext context) {

    Size screenSize=MediaQuery.of(context).size;
    
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Color.fromRGBO(58,66,86,0.9),
        title:Text(
        'About Page'
      ),),
      drawer:new MyDrawer(),
      body:Stack(
        children: <Widget>[
          buildCoverImage(screenSize),
          SafeArea(
            child:SingleChildScrollView(
              child:Column(
                children: <Widget>[
                  SizedBox(
                    height: screenSize.height/6.4,
                  ),
                  buildProfileImage(),
                  buildStatus(context),
                  buildStatusContainer(),
                  buildBio(context),
                  buildSeperator(screenSize),
                  SizedBox(height:5.0),
                  buildGetInTouch(context),
                  SizedBox(height:5.0),
                  buildButtons()                  
                ],
              ),
            ),

          )

        ],
      )
    );

  }

}