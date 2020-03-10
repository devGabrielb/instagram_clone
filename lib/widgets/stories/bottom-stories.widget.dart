import 'package:flutter/material.dart';
import 'package:instagram_clone/sizeConfig.dart';

class BottomStorie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(

      child: Row(
        children: <Widget>[
          Container(
            height: SizeConfig.blockSizeHorizontal * 14,
            width: SizeConfig.blockSizeHorizontal * 14,
            decoration: BoxDecoration(
            
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(50)
            ),
            child: Icon(Icons.photo_camera, color: Colors.white,),
          ),

          Container(
            margin: EdgeInsets.only(left: 10),
            height: SizeConfig.blockSizeHorizontal * 15,
            width: SizeConfig.blockSizeHorizontal * 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.white),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 15),
              width: SizeConfig.blockSizeHorizontal * 65,
              child: TextFormField(
                
                keyboardType: TextInputType.text,
                decoration: InputDecoration.collapsed(
                  hintText: "Enviar Menssagem",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
          ),
          Icon(Icons.more_vert, color: Colors.white,)
                ],
              ),
            ),
          ),
        ],
      ),
      
    );
  }
}