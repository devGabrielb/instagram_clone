import 'package:flutter/material.dart';
import 'package:instagram_clone/icons_class/instagram_clone_icons.dart';
class Header extends StatelessWidget implements PreferredSizeWidget {

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      
      
      child: SafeArea(child: Padding(
        padding: EdgeInsets.symmetric(horizontal:8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Instagram_clone.photo, ),
                SizedBox(width: 8,),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset("assets/Instagram_logo.svg",color: Theme.of(context).accentColor,),
                  ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Instagram_clone.igtv),
                SizedBox(width: 8,),
                Icon(Instagram_clone.direct2),
              ],
            ),

          ],
        ),
      ),),
    );
  }
}

