import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title;
  final String imgUrl;

  DetailScreen({Key key, this.title, this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(),
    );
  }
}
