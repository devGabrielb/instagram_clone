import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/tabs.page.dart';
import 'package:instagram_clone/themes/dark.theme.dart';
import 'package:instagram_clone/themes/light.theme.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: darkTheme(),
      home: DefaultTabController(
        length: 5,
        child: TabsPage(),
      ),
    );
  }
}

