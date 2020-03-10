import 'package:flutter/material.dart';

class TimeStories extends StatefulWidget {
  AnimationController controller;
  TimeStories(this.controller);
   
  @override
  _TimeStoriesState createState() => _TimeStoriesState();
}

class _TimeStoriesState extends State<TimeStories>
    {
   
      
  
  Animation<double> sizeTrans;
  
  @override
  void initState() {
    super.initState();
    
    sizeTrans = Tween(
      begin: 0.0,
      end: 356.0,
    ).animate(widget.controller)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed){
         Navigator.pop(context);
        }
        
      }
      
      );
      widget.controller.forward ();
      
  }
  @override
  Widget build(BuildContext context) {
    
    return AnimatedBuilder(
      builder: _animate, 
      animation: widget.controller,
      );
  }

  
  Widget _animate(context, child) {
   
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2),
      child: Stack(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width:356,
                height: 3,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                width: sizeTrans.value,
                height: 3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
