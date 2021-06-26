import 'dart:ui';

import 'package:flutter/material.dart';
import '../providers/TempleGrid.dart';
import 'package:provider/provider.dart';

class drawer extends StatelessWidget {
  static const route = '/TempleScreen';
  @override
  Widget build(BuildContext context) {
    var templeList = Provider.of<TempleGrid>(context).templeList;
    return Drawer(
        child: ListView.builder(
            itemCount: templeList.length,
            itemBuilder: (ctx, i) {
              return ListTile(
                onTap: () => Navigator.of(context)
                    .pushNamed(route, arguments: templeList[i]),
                title: Text(
                  templeList[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(templeList[i].location),
              );
            }));
  }
}
