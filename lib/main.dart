import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/TempleGrid.dart';
import 'screens/TempleScreen.dart';
import 'screens/homeGridScreen.dart';
import 'widgets/homeGridScreenTile.dart';
import 'widgets/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => TempleGrid(),
        ),
      ],
      child: MaterialApp(
        title: 'Temples Of India',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: HomeGridScreen(),
        routes: {
          HomeGridScreenTile.routeName: (ctx) => TempleScreen(),
          drawer.route: (ctx) => TempleScreen(),
        },
      ),
    );
  }
}
