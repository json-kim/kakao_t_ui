import 'package:flutter/material.dart';

class BmiCalcResultScreen extends StatelessWidget {
  const BmiCalcResultScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('결과'),
      ),
      body: Container(
        child: Center(child: Text('결과 화면')),
      ),
    );
    ;
  }
}
