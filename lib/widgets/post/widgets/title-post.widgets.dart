import 'package:flutter/material.dart';

class TitlePost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(
              text: "User ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "titulo da postagem" 
            ),
          ],
        ),
        
      ),
    );
  }
}