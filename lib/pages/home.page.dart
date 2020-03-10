import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/home/hearder.widgets.dart';
import 'package:instagram_clone/widgets/post/post-list.widget.dart';
import 'package:instagram_clone/widgets/stories/stories-item.dart';

import '../sizeConfig.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    SizeConfig().init(context);
    
    return Scaffold(
      appBar: Header(),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              height: SizeConfig.blockSizeHorizontal *27,
              child: StoriesList(),
            ),
            Divider(
              height: 1,
              color: Colors.black12,
            ),
            SizedBox(height: 5,),
            Container(
              height: SizeConfig.blockSizeVertical * 73,
              child: PostItem("http://www.aranhahomem.com/images/pictures/fantastico-homem-aranha.jpg","https://cdn3.movieweb.com/i/article/n65UdKFBhHV07PARz5VtETevOgWbRR/798:50/Spider-Man-Far-From-Home-Zendaya-Red-Hair.jpg", "https://i.pinimg.com/originals/88/a0/eb/88a0eb3107ea96b7f1c816d02a3027b9.jpg"),
            ),
            Container(
              height: SizeConfig.blockSizeVertical * 73,
              child: PostItem("https://postgrain.com/wp-content/uploads/2017/04/burst.jpg","https://s.aficionados.com.br/imagens/15-imagens-da-mulher-maravilha-que-os-fas-vao-amar_f.jpg", "https://img1.topimagens.com/ti/leoes/leoes_001.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}