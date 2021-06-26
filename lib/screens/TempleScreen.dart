import 'package:flutter/material.dart';

import '../models/Temple.dart';

class TempleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final temple = ModalRoute.of(context)!.settings.arguments as Temple;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
              child: Image.network(
                temple.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              temple.name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(temple.location),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.all(10), child: Text(temple.information))
          ],
        ),
      ),
    );
  }
}
