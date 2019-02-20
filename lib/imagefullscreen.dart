import 'package:flutter/material.dart';


class FullScreenImagePage   extends StatelessWidget {
  String imagepath;
  FullScreenImagePage(this.imagepath);

  final LinearGradient backgroundgradient=new LinearGradient(
    colors:[new Color(0x1000000),new Color(0x30000000)],
    begin:Alignment.bottomRight
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:new SizedBox.expand(
        child:new Container(
          decoration:new BoxDecoration(
            gradient:backgroundgradient,
            
          ),
          child:new Stack(
            children: <Widget>[
              new Align(
                alignment:Alignment.center,
                child:new Hero(
                  tag:imagepath,
                  child:new Image.network(imagepath),

                ),  
              ),
              new Align(
                alignment:Alignment.topCenter,
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.start,
                  mainAxisSize:MainAxisSize.min,
                  children: <Widget>[
                    AppBar(
                      elevation:0.0,
                      backgroundColor:Colors.transparent,
                      leading:new IconButton(
                        onPressed:(){
                          Navigator.of(context).pop();
                          },
                        icon:new Icon(
                          Icons.close,
                          
                        ),
                        color:Colors.black,

                      ),
                    )
                  ],
                )
              )
              ],
          ),
        ),
      ),
    );
  }
}