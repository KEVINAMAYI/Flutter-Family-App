import 'package:flutter/material.dart';
import 'package:my_family_app/familytipsinfo.dart';

 class MainColumn extends StatelessWidget {
 var title;
 var imageurl;

 MainColumn(final title,final imageurl){

  this.title=title;
  this.imageurl=imageurl;

  }

 
  @override
  Widget build(BuildContext context) {
    return new Column(
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
                     child:Image.asset(
                       imageurl,
                       fit:BoxFit.cover,
                     ),
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
         child:ListView.builder(
         itemBuilder:(BuildContext context,int index)=>ExpansionTileItem(switchTips(title)[index]),
         itemCount:switchTips(title).length
         ),
         
       )
                       ] 
                     );
  }
}





class ExpansionTileItem extends StatelessWidget{

  const ExpansionTileItem(this.familytip);

  final FamilyTips familytip;

  Widget _buildTiles(FamilyTips root){
    if(root.children.isEmpty) return ListTile(title:Text(root.title));
    return ExpansionTile(

      key:PageStorageKey<FamilyTips>(root),
      title:Row(
        children: <Widget>[
          Text(root.title,style: TextStyle(

              fontSize:17.0,
              fontWeight:FontWeight.bold,
              color:Color.fromARGB(255,39,55,89),


          ),),
          
        ],
      ),
      children: root.children.map(_buildTiles).toList()
    );


  }

 @override
  Widget build(BuildContext context){

    return _buildTiles(familytip);

  }

  
}