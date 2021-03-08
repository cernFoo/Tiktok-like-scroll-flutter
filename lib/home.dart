import 'package:flutter/material.dart';
import 'package:tiktok_scroll/tiktoklikescroller.dart';

class Home extends StatelessWidget {
  final List<Image> images;
  const Home({Key key, @required this.images}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TikTokStyleFullPageScroller(
        contentSize: images.length,
        swipeThreshold: 0.2,
        // ^ the fraction of the screen needed to scroll
        swipeVelocityThreshold: 1000,
        // ^ the velocity threshold for smaller scrolls
        animationDuration: const Duration(milliseconds: 300),
        // ^ how long the animation will take
        builder: (BuildContext context, int index) {
          return Container(
              margin: EdgeInsets.only(bottom: 1),
              color: Color.fromRGBO(45, 45, 45, 1),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      color: Colors.redAccent,
                    ),
                    images[index],
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 150,
                      width: MediaQuery.of(context).size.width *0.9,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(8)
                        
                      ),
                    )
                  ],
                )
                
              ));
        },
      ),
      bottomNavigationBar: Container(
       decoration: BoxDecoration(
        color: Color.fromRGBO(45, 45, 45, 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3)
          )
        ]
      ),
      // height: 55,
      height: MediaQuery.of(context).size.height *0.08,
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home, 
              size: 34.0, 
              color: Color.fromRGBO(128, 128, 128, 1)), 
            onPressed: (){
              // Navigator.pushReplacementNamed(context, '');
              print("Home Button pressed");
            }
          ),
           IconButton(
            icon: Icon(
              Icons.mail, 
              size: 34.0),
              color: Color.fromRGBO(128, 128, 128, 1),
            onPressed: (){
              print("Mail Button Pressed");
            }
          )
        ],
      )
    ),
    );
  }
}
