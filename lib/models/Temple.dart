import 'package:flutter/cupertino.dart';

class Temple with ChangeNotifier {
  final String name;
  final String location;
  final String information;
  final String imageUrl;
  final String id;
  bool visited = false;

  Temple(
      {required this.name,
      required this.location,
      required this.information,
      required this.imageUrl,
      required this.id});
  void togglevisited(bool oldVisited) {
    visited = !oldVisited;
    notifyListeners();
  }
}
