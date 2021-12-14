import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/model/menu.dart';

class DetailScreen extends StatefulWidget {
  final Menu menu;

  const DetailScreen({Key? key, required this.menu}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  double scale = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.menu.title),
      ),
      body: Container(
        constraints: const BoxConstraints(
          minHeight: 100,
          minWidth: 100,
        ),
        alignment: Alignment.center,
        child: GestureDetector(
            onScaleUpdate: (val) {
              setState(() {
                scale = 1 / val.scale;
              });
            },
            child: Hero(
              tag: widget.menu.imageUrl,
              child: Image.network(
                widget.menu.imageUrl,
                scale: scale,
              ),
            )),
      ),
    );
  }
}
