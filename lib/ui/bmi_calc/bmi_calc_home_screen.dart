import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/ui/bmi_calc/bmi_calc_result_screen.dart';

class BmiCalcHomeScreen extends StatelessWidget {
  const BmiCalcHomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI 계산하기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(),
            TextField(),
            ElevatedButton(
              onPressed: () {
                // 버튼 눌렀을 때,
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BmiCalcResultScreen(),
                  ),
                );
              },
              child: Text('계산하기'),
            )
          ],
        ),
      ),
    );
    ;
  }
}
