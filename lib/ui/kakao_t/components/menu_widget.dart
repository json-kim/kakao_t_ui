import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/model/menu.dart';

class MenuWidget extends StatelessWidget {
  final Menu menu;

  const MenuWidget({
    this.menu,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Hero(
              tag: menu.imageUrl,
              child: Image.network(
                menu.imageUrl,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Icon(
                menu.isFavorite ? Icons.star : Icons.star_border,
                color: Colors.redAccent,
              ),
            ),
          ],
        ),
        Text(
          menu.title,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
