import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/Temple.dart';

class HomeGridScreenTile extends StatelessWidget {
  Temple temple;
  HomeGridScreenTile(this.temple);

  static const routeName = '/TempleScreen';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.of(context).pushNamed(routeName, arguments: temple),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
          child: Image.network(
            temple.imageUrl,
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            trailing: IconButton(
                icon: Consumer<Temple>(
                    builder: (ctx, temple, _) => temple.visited
                        ? Icon(Icons.add_location_alt_rounded)
                        : Icon(Icons.add_location_alt_outlined)),
                onPressed: () => temple.togglevisited(temple.visited)),
            backgroundColor: Colors.black54,
            title: Text(
              temple.name,
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
