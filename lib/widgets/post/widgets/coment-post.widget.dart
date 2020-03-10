import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../sizeConfig.dart';

class ComentPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 15),
            height: SizeConfig.blockSizeHorizontal * 8,
            width: SizeConfig.blockSizeHorizontal * 8,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://i.pinimg.com/originals/e5/12/48/e51248e5eef9461efa66ac88cf21cd45.jpg"), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          Container(
            width: 200,
            child: TextFormField(
              
              keyboardType: TextInputType.text,
              decoration: InputDecoration.collapsed(
                hintText: "Adicione um Comentário...",
                hintStyle: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
