import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/stories.page.dart';
import 'package:instagram_clone/sizeConfig.dart';

class StoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5),
            child: StoriesItem(
                true,
                "https://i.pinimg.com/originals/e5/12/48/e51248e5eef9461efa66ac88cf21cd45.jpg",
                false),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: StoriesItem(false,
                "https://img1.topimagens.com/ti/leoes/leoes_001.jpg", false),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: StoriesItem(
                false,
                "https://postgrain.com/wp-content/uploads/2017/04/burst.jpg",
                true),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: StoriesItem(
                false,
                "http://www.aranhahomem.com/images/pictures/fantastico-homem-aranha.jpg",
                true),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: StoriesItem(
                false,
                "https://i.pinimg.com/originals/88/a0/eb/88a0eb3107ea96b7f1c816d02a3027b9.jpg",
                true),
          ),
        ],
      ),
    );
  }
}

class StoriesItem extends StatefulWidget {
  var check = true;
  bool storie = false;
  String url;
  StoriesItem(this.check, this.url, this.storie);

  @override
  _StoriesItemState createState() => _StoriesItemState();
}

class _StoriesItemState extends State<StoriesItem> {
  var anima = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Material(
              borderRadius: BorderRadius.circular(50),
              child: AnimatedContainer(
                curve: Curves.bounceIn,
                duration: Duration(milliseconds: 300),
                height: anima ? SizeConfig.blockSizeHorizontal * 14.7: SizeConfig.blockSizeHorizontal * 16.7,
                width: anima ? SizeConfig.blockSizeHorizontal * 14.7: SizeConfig.blockSizeHorizontal * 16.7,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    stops: [0.2, 1],
                    colors: [
                      widget.storie ? Color(0xFFF58524) : Colors.white,
                      widget.storie ? Color(0xFFF92B7F) : Colors.white,
                    ],
                  ),
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: (){
                    setState(() {
                     anima = !anima; 
                    });
                    
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>StoriesPage(widget.url),
                    ),);
                  },
                  child: Hero(
                    tag: widget.url,
                    child: AnimatedContainer(

                       curve: Curves.bounceIn,
                      duration: Duration(milliseconds: 300),
                       height: anima ? SizeConfig.blockSizeHorizontal * 14.7: SizeConfig.blockSizeHorizontal * 16.7,
                width: anima ? SizeConfig.blockSizeHorizontal * 14.7: SizeConfig.blockSizeHorizontal * 16.7,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(widget.url), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Opacity(
              opacity: widget.check == true ? 1 : 0,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 50, left: 50),
                height: SizeConfig.blockSizeHorizontal * 5.35,
                width: SizeConfig.blockSizeHorizontal * 5.35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Container(
                  height: SizeConfig.blockSizeHorizontal * 4.25,
                  width: SizeConfig.blockSizeHorizontal * 4.25,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: SizeConfig.blockSizeHorizontal * 4.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Text("User"),
      ],
    );
  }
}
