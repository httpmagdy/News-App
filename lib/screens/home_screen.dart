import 'package:flutter/material.dart';
import 'package:flutter_app2/shaerd_ui/navigation_drawer.dart';
import 'package:flutter_app2/screens/home_tabs/whats_new.dart';
import 'package:flutter_app2/screens/home_tabs/favorites.dart';
import 'package:flutter_app2/screens/home_tabs/popular.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

  TabController _taBController;
  @override
  void initState(){
    super.initState();
    _taBController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//        drawer: Navigation(),
        appBar: AppBar(
          title: Text('Explore'),
          centerTitle: false,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.more_vert),onPressed: () {},),
            IconButton(icon: Icon(Icons.search),onPressed: () {},)
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: "WHAT'S NEW",),
              Tab(text: "POPULAR",),
              Tab(text: "FAVORITES",),
            ],controller: _taBController,),
        ),
        body: Center(
          child: TabBarView(
            children: [

              WhatsNew(),
              Popular(),
              Favorites(),

            ],controller: _taBController,
          ),
        ));
  }
}
