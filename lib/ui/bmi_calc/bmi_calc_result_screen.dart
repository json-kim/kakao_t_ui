import 'package:flutter/material.dart';

class BmiCalcResultScreen extends StatelessWidget {
  final double weight;
  final double height;

  const BmiCalcResultScreen(
      {required this.weight, required this.height, Key? key})
      : super(key: key);

  double getBmi(double w, double h) {
    return w / ((h / 100) * (h / 100));
  }

  Widget _buildIcon(double bmi) {
    if (bmi >= 23) {
      return const Icon(
        Icons.sentiment_very_dissatisfied,
        color: Colors.red,
        size: 100,
      );
    } else if (bmi >= 18.5) {
      return const Icon(
        Icons.sentiment_satisfied,
        color: Colors.green,
        size: 100,
      );
    } else {
      return const Icon(
        Icons.sentiment_dissatisfied,
        color: Colors.orange,
        size: 100,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('결과'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'BMI: ${getBmi(weight, height).toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 28,
                ),
              ),
              _buildIcon(getBmi(weight, height)),
            ],
          ),
        ),
      ),
    );
  }
}
