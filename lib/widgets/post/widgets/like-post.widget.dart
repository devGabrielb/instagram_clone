import 'package:flutter/material.dart';

import '../../../sizeConfig.dart';

class LikePost extends StatelessWidget {
  String url_like;
  LikePost(this.url_like);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: 
          Container(
            alignment: Alignment.center,
            
            height: SizeConfig.blockSizeHorizontal * 5.35,
            width: SizeConfig.blockSizeHorizontal * 5.35,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Container(
              height: SizeConfig.blockSizeHorizontal * 4.35,
              width: SizeConfig.blockSizeHorizontal * 4.35,
              decoration: BoxDecoration(
                image: DecorationImage(
                            image: NetworkImage(url_like), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(50),
              ),
              
            ),
          ),
      
    );
  }
}
