import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/homeGridScreenTile.dart';
import '../providers/TempleGrid.dart';
import '../widgets/drawer.dart';
import '../models/Temple.dart';

enum staus { all, visited, unvisited }

class HomeGridScreen extends StatefulWidget {
  @override
  _HomeGridScreenState createState() => _HomeGridScreenState();
}

class _HomeGridScreenState extends State<HomeGridScreen> {
  var GridStataus = staus.all;
  late List<Temple> templeList;

  @override
  Widget build(BuildContext context) {
    if (GridStataus == staus.all) {
      templeList = Provider.of<TempleGrid>(context).templeList;
    }
    if (GridStataus == staus.unvisited) {
      templeList = Provider.of<TempleGrid>(context).UnvisitedList;
    }
    if (GridStataus == staus.visited) {
      templeList = Provider.of<TempleGrid>(context).VistedTempleList;
    }

    return Scaffold(
      drawer: drawer(),
      appBar: AppBar(title: Text("Temples Of INDIA"), actions: <Widget>[
        PopupMenuButton(
          itemBuilder: (ctx) => [
            PopupMenuItem(
              child: Text('All Temples'),
              value: staus.all,
            ),
            PopupMenuItem(
              child: Text("Visited Temples"),
              value: staus.visited,
            ),
            PopupMenuItem(
              child: Text("Unvisited Temples"),
              value: staus.unvisited,
            ),
          ],
          onSelected: (selected) {
            setState(() {
              if (selected == staus.all) {
                GridStataus = staus.all;
              }
              if (selected == staus.visited) {
                GridStataus = staus.visited;
              }
              if (selected == staus.unvisited) {
                GridStataus = staus.unvisited;
              }
            });
          },
        ),
      ]),
      body: GridView.builder(
          padding: EdgeInsets.all(10),
          itemCount: templeList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 3 / 2),
          itemBuilder: (ctx, i) {
            return ChangeNotifierProvider.value(
                value: templeList[i], child: HomeGridScreenTile(templeList[i]));
          }),
    );
  }
}
