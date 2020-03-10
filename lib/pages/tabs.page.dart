import 'package:flutter/material.dart';
import 'package:instagram_clone/icons_class/instagram_clone_icons.dart';
import 'package:instagram_clone/pages/home.page.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: TabBarView(
      
        children: [
          HomePage(),
          Container(),
          Container(),
          Container(),
          Container(),
        ],

      ),
      bottomNavigationBar: Material(
        elevation: 10,
        child: TabBar(

          tabs: [
            Tab(icon: Icon(Instagram_clone.home),),
            
            Tab(icon: Icon(Instagram_clone.search),),
            Tab(icon: Icon(Instagram_clone.post),),
            Tab(icon: Icon(Instagram_clone.like2),),
            Tab(icon: Icon(Instagram_clone.user),),
          ],
          labelColor: Theme.of(context).accentColor,
          unselectedLabelColor: Colors.black38,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.all(5),
          indicatorColor: Theme.of(context).accentColor,
          
        ),
      ),
    );
  }
}