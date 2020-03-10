import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_clone/sizeConfig.dart';
import 'package:instagram_clone/widgets/stories/bottom-stories.widget.dart';
import 'package:instagram_clone/widgets/stories/time-stories.widget.dart';

class StoriesPage extends StatefulWidget {
  String url;
  bool stopAnim = true;
  StoriesPage(this.url);

  @override
  _StoriesPageState createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> with SingleTickerProviderStateMixin  {
  AnimationController _controller;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      body: GestureDetector(
        onLongPress: () {
          _controller.stop();
          setState(() {
           widget.stopAnim = false; 
          });
        },
        onLongPressUp: () {
          
          _controller.forward();
          setState(() {
           widget.stopAnim = true; 
          });
        },
        child: Container(
          color: Colors.black,
          width: SizeConfig.blockSizeHorizontal * 100,
          height: SizeConfig.blockSizeVertical * 100,
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  TimeStories(_controller),
                ],
              ),
              SizedBox(
                height: 5,
              ),
               widget.stopAnim ? Container(
                  width: SizeConfig.blockSizeHorizontal * 100,
                  height: SizeConfig.blockSizeVertical * 95,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 5),
                        child: Row(
                          children: <Widget>[
                            Hero(
                              tag: widget.url,
                              child: Container(
                                margin: EdgeInsets.only(right: 15),
                                height: SizeConfig.blockSizeHorizontal * 8,
                                width: SizeConfig.blockSizeHorizontal * 8,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(widget.url),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Text(
                                "User",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text("1min", style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
                      Container(
                        child: BottomStorie(),
                      ),
                    ],
                  ),
                ):  Container(),
              
            ],
          ),
        ),
      ),
    );
  }
}
