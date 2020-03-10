import 'package:flutter/material.dart';
import 'package:instagram_clone/icons_class/instagram_clone_icons.dart';
import 'package:instagram_clone/sizeConfig.dart';
import 'package:instagram_clone/widgets/post/widgets/coment-post.widget.dart';
import 'package:instagram_clone/widgets/post/widgets/like-post.widget.dart';
import 'package:instagram_clone/widgets/post/widgets/title-post.widgets.dart';

class PostList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class PostItem extends StatelessWidget {
  String url_like;
  String url;
  String url_post;
  PostItem(this.url, this.url_post, this.url_like);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: SizeConfig.blockSizeHorizontal * 8,
                      width: SizeConfig.blockSizeHorizontal * 8,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(url), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    Text("User"),
                  ],
                ),
                Icon(Icons.more_vert),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            height: 1,
            color: Colors.black12,
          ),
          Container(
            width: SizeConfig.screenWidth,
            height: SizeConfig.blockSizeVertical * 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(url_post), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Instagram_clone.like2,
                      size: 24,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Stack(
                      children: <Widget>[
                        Icon(
                      Instagram_clone.comment,
                      size: 24,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 1.9, top: 3),
                      width: 20,
                      height: 18,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                      ],
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Instagram_clone.direct2,
                      size: 24,
                    ),
                  ],
                ),
                Icon(
                  Instagram_clone.give,
                  size: 24,
                ),
              ],
            ),
          ),
          Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 8),
                  child: LikePost(url_like),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:4),
                  child: RichText(
                    text: TextSpan(
                      text: 'Curtido por ',
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                            text: 'User',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: " e "),
                        TextSpan(text: 'outras pessoas', style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              
              ],
            ),
            
          ),
          Container(
            margin: EdgeInsets.only(left: 18),
            height: 20, 
          child: TitlePost(),
          ),
          SizedBox(height: 20,),
           Container(
             height: 50,
             margin: EdgeInsets.only(left: 10),
          child: ComentPost(),
          ),
          
          
         

        ],
      ),
    );
  }
}
