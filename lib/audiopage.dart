import 'package:flutter/material.dart';
import 'package:my_family_app/main.dart';

class MyAudioPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Color.fromRGBO(58,66,86,0.9),
        title:Text(
        'MyAudio Page'      

      ),
      actions: <Widget>[
        IconButton(
          icon:Icon(Icons.search),
          onPressed:(){
            showSearch(
              context:context,delegate: SearchImplementation()
            );
          },
        )
      ],),
      drawer:MyDrawer(),
      body:Container(
        padding:EdgeInsets.all(0.0),
        child:
          new MyListWidget(),
       
      ),
    );

  }

}

/*A list of the audios*/
class MyListWidget extends StatelessWidget
{


Widget build(BuildContext context){

   return ListView(
   children: <Widget>[

      ListTile(
       leading:CircleAvatar(
           child:Icon(
           Icons.queue_music,
           color:Colors.white,
         ),
         backgroundColor:Color.fromARGB(215,39,55,89),
         ),
        title:Text('Marriage and Courtship Explained',
        style:TextStyle(

          fontWeight:FontWeight.w500,
          color:Color.fromARGB(255,39,55,89),
          
        ),),
        onTap:(){
           
  
         showModalBottomSheet<void>(
             context:  context,
             builder:(BuildContext context)=>
             Container(
             child:Padding(
               padding:EdgeInsets.only(top:20.0),
               child:Column(
               children: <Widget>[
                 ListTile(
                   leading:Icon(
                     Icons.cloud_download
                   ),
                   title:Text("Download",
                   style: TextStyle(

                     fontSize:17.0,
                     fontWeight:FontWeight.bold,
                     color:Color.fromARGB(255,39,55,89),
   
                   ),),

                 ),
                  ListTile(
                   leading:Icon(
                     Icons.play_arrow
                   ),
                   title:Text("Play",
                   style: TextStyle(
                     
                     fontSize:17.0,
                     fontWeight:FontWeight.bold,
                     color:Color.fromARGB(255,39,55,89),
   
                   ),),
                 ),
                  ListTile(
                    leading:Icon(
                     Icons.share
                   ),
                   title:Text("Share",
                   style: TextStyle(
                     
                     fontSize:17.0,
                     fontWeight:FontWeight.bold,
                     color:Color.fromARGB(255,39,55,89),
   
                   ),),
                   
                 ),
                  ListTile(
                    leading:Icon(
                     Icons.link
                   ),
                   title:Text("Get Link",
                   style: TextStyle(
                     
                     fontSize:17.0,
                     fontWeight:FontWeight.bold,
                     color:Color.fromARGB(255,39,55,89),
   
                   ),),
                   
                 )
               ],
             ))
          ),
          );



 
                   },
                 ),
                 ListTile(
                  leading:CircleAvatar(
                      child:Icon(
                      Icons.queue_music,
                      color:Colors.white,
                    ),
                    backgroundColor:Color.fromARGB(215,39,55,89),
                    ),
                   title:Text('Wife and Courtship Explained',
                   style:TextStyle(
           
                     fontWeight:FontWeight.w500,
                     color:Color.fromARGB(255,39,55,89),
                     
                   ),),
                 ),
                  ListTile(
                   leading:CircleAvatar(
                      child:Icon(
                      Icons.queue_music,
                      color:Colors.white,
                    ),
                    backgroundColor:Color.fromARGB(215,39,55,89),
                    ),
                   title:Text('Husband and Courtship Explained',
                   style:TextStyle(
           
                     fontWeight:FontWeight.w500,
                     color:Color.fromARGB(255,39,55,89),
                     
                   ),),
                 ),
               ListTile(
                   leading:CircleAvatar(
                      child:Icon(
                      Icons.queue_music,
                      color:Colors.white,
                    ),
                   backgroundColor:Color.fromARGB(215,39,55,89),
                    ),
                   title:Text('Children and Courtship Explained',
                   style:TextStyle(
           
                     fontWeight:FontWeight.w500,
                     color:Color.fromARGB(255,39,55,89),
                     
                   ),),
                 ),
                ListTile(
                   leading:CircleAvatar(
                      child:Icon(
                      Icons.queue_music,
                      color:Colors.white,
                    ),
                    backgroundColor:Color.fromARGB(215,39,55,89),
                    ),
                   title:Text('Dating  and Courtship Explained',
                   style:TextStyle(
           
                     fontWeight:FontWeight.w500,
                     color:Color.fromARGB(255,39,55,89),
                     
                   ),),
                 ),
                 ListTile(
                   leading:CircleAvatar(
                      child:Icon(
                      Icons.queue_music,
                      color:Colors.white,
                    ),
                    backgroundColor:Color.fromARGB(215,39,55,89),
                    ),
                   title:Text('Family and Courtship Explained',
                   style:TextStyle(
           
                     fontWeight:FontWeight.w500,
                     color:Color.fromARGB(255,39,55,89),
                     
                   ),),
                 ),
                 ListTile(
                  leading:CircleAvatar(
                      child:Icon(
                      Icons.queue_music,
                      color:Colors.white,
                    ),
                    backgroundColor:Color.fromARGB(215,39,55,89),
                    ),
                   title:Text('Friends and Courtship Explained',
                   style:TextStyle(
           
                     fontWeight:FontWeight.w500,
                     color:Color.fromARGB(255,39,55,89),
                     
                   ),),
                 ),
                 ListTile(
                 leading:CircleAvatar(
                      child:Icon(
                      Icons.queue_music,
                      color:Colors.white,
                    ),
                    backgroundColor:Color.fromARGB(215,39,55,89),
                    ),
                   title:Text('Friends and Courtship Explained',
                   style:TextStyle(
           
                     fontWeight:FontWeight.w500,
                     color:Color.fromARGB(255,39,55,89),
                     
                   ),),
                 ),
                 ListTile(
                   leading:CircleAvatar(
                      child:Icon(
                      Icons.queue_music,
                      color:Colors.white,
                    ),
                    backgroundColor:Color.fromARGB(215,39,55,89),
                    ),
                   title:Text('Friends and Courtship Explained',
                   style:TextStyle(
           
                     fontWeight:FontWeight.w500,
                     color:Color.fromARGB(255,39,55,89),
                     
                   ),),
                 ),
                 ListTile(
                  leading:CircleAvatar(
                      child:Icon(
                      Icons.queue_music,
                      color:Colors.white,
                    ),
                    backgroundColor:Color.fromARGB(215,39,55,89),
                    ),
                   title:Text('Friends and Courtship Explained',
                   style:TextStyle(
           
                     fontWeight:FontWeight.w500,
                     color:Color.fromARGB(255,39,55,89),
                     
                   ),),
                 ),
                 ListTile(
                  leading:CircleAvatar(
                      child:Icon(
                      Icons.queue_music,
                      color:Colors.white,
                    ),
                    backgroundColor:Color.fromARGB(215,39,55,89),
                    ),
                   title:Text('Friends and Courtship Explained',
                   style:TextStyle(
           
                     fontWeight:FontWeight.w500,
                     color:Color.fromARGB(255,39,55,89),
                     
                   ),),
                 ),
                 ListTile(
                   leading:CircleAvatar(
                      child:Icon(
                      Icons.queue_music,
                      color:Colors.white,
                    ),
                   backgroundColor:Color.fromARGB(215,39,55,89),
                    ),
                   title:Text('Friends and Courtship Explained',
                   style:TextStyle(
           
                     fontWeight:FontWeight.w500,
                     color:Color.fromARGB(255,39,55,89),
                     
                   ),),
                 ),
                 ListTile(
                  leading:CircleAvatar(
                      child:Icon(
                      Icons.queue_music,
                      color:Colors.white,
                    ),
                   backgroundColor:Color.fromARGB(215,39,55,89),
                    ),
                   title:Text('Friends and Courtship Explained',
                   style:TextStyle(
           
                     fontWeight:FontWeight.w500,
                     color:Color.fromARGB(255,39,55,89),
                     
                   ),),
                 ),
                 ListTile(
                 leading:CircleAvatar(
                      child:Icon(
                      Icons.queue_music,
                      color:Colors.white,
                    ),
                    backgroundColor:Color.fromARGB(215,39,55,89),
                    ),
                   title:Text('Friends and Courtship Explained',
                   style:TextStyle(
           
                     fontWeight:FontWeight.w500,
                     color:Color.fromARGB(255,39,55,89),
                     
                   ),),
                 ),
           
           
           
              ],
           
              );
           
             }
           
  
  
}


class SearchImplementation extends SearchDelegate<String>
{

  final titles=[

    "Marriage and Courtship Explained",
    "Wife and Courtship Explained",
    "Husband and Courtship Explained",
    "Children and Courtship Explained",
    "Dating  and Courtship Explained",
    "Family and Courtship Explained",
    "Friends and Courtship Explained"
  ];



   final recenttitles=[

    "Dating  and Courtship Explained",
    "Family and Courtship Explained",
    "Friends and Courtship Explained"

   ];

  
  @override
  List<Widget> buildActions(BuildContext context) {
    //what to display on the edge of the search bar
    return [
      IconButton(
        icon:Icon(Icons.close),
        onPressed:(){
          query=null;
        },
      )

    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton
    (
      icon:AnimatedIcon(
        icon:AnimatedIcons.menu_arrow,
        progress:transitionAnimation,
      ),
      onPressed:(){
        close(context, null);
      },
      
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    
  }

  @override
  Widget buildSuggestions(BuildContext context) {
     
     final suggestion=query.isEmpty?recenttitles:titles.where((p)=> p.startsWith(query)).toList();

     return ListView.builder(
       itemBuilder:(context,index)=>ListTile(
         leading:CircleAvatar(
           child:Icon(
           Icons.queue_music,
           color:Colors.white,
         ),
         backgroundColor:Color.fromARGB(215,39,55,89),
         ),
         title:RichText(
           text:TextSpan(
             text:suggestion[index].substring(0,query.length),
             style:TextStyle(
             fontWeight:FontWeight.w500,
             color:Colors.black),
             children:[
               TextSpan(
                 text:suggestion[index].substring(query.length),
                 style:TextStyle(
                   fontWeight:FontWeight.normal,
                   color:Colors.grey

                 )
               )
             ]
           ),
         ),
         
       ),
       itemCount:suggestion.length,
       
     );

  }
}




