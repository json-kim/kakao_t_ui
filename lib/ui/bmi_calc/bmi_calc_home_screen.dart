import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/ui/bmi_calc/bmi_calc_result_screen.dart';

class BmiCalcHomeScreen extends StatefulWidget {
  const BmiCalcHomeScreen({Key key}) : super(key: key);

  @override
  State<BmiCalcHomeScreen> createState() => _BmiCalcHomeScreenState();
}

class _BmiCalcHomeScreenState extends State<BmiCalcHomeScreen> {
  final _formKey = GlobalKey<FormState>();
  double _height;
  double _weight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI 계산하기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: '몸무게 (kg)',
                  hintText: 'ex: 70',
                ),
                validator: (val) {
                  if (val == '') {
                    return '값을 입력해주세요';
                  } else if (double.tryParse(val) == null) {
                    return '숫자를 입력해주세요';
                  }
                  return null;
                },
                onSaved: (input) {
                  _weight = double.parse(input);
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: '키 (cm)',
                  hintText: 'ex: 170',
                ),
                validator: (val) {
                  if (val == '') {
                    return '값을 입력해주세요';
                  } else if (double.tryParse(val) == null) {
                    return '숫자를 입력해주세요';
                  }
                  return null;
                },
                onSaved: (input) {
                  _height = double.parse(input);
                },
              ),
              ElevatedButton(
                onPressed: () {
                  // 폼 데이터 검사 & 계산
                  if (!_formKey.currentState.validate()) return;

                  _formKey.currentState.save();

                  // 버튼 눌렀을 때,
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BmiCalcResultScreen(
                        weight: _weight,
                        height: _height,
                      ),
                    ),
                  );
                },
                child: Text('계산하기'),
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
