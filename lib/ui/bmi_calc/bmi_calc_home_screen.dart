import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/ui/bmi_calc/bmi_calc_result_screen.dart';

class BmiCalcHomeScreen extends StatefulWidget {
  const BmiCalcHomeScreen({Key? key}) : super(key: key);

  @override
  State<BmiCalcHomeScreen> createState() => _BmiCalcHomeScreenState();
}

class _BmiCalcHomeScreenState extends State<BmiCalcHomeScreen> {
  final _formKey = GlobalKey<FormState>();
  double _height = 0;
  double _weight = 0;

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
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return '값을 입력해주세요';
                  } else if (double.tryParse(val) == null) {
                    return '올바른 숫자를 입력해주세요';
                  }
                  return null;
                },
                onSaved: (input) {
                  _weight = double.parse(input!.trim());
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: '키 (cm)',
                  hintText: 'ex: 170',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (val) {
                  if (val == null || val.trim().isEmpty) {
                    return '값을 입력해주세요';
                  } else if (double.tryParse(val) == null) {
                    return '숫자를 입력해주세요';
                  }
                  return null;
                },
                onSaved: (input) {
                  _height = double.parse(input!.trim());
                },
              ),
              ButtonBar(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // 폼 데이터 검사 & 계산
                      if (!(_formKey.currentState?.validate() ?? false)) return;

                      _formKey.currentState!.save();

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
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
