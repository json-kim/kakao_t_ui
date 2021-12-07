import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/ui/counter/counter_screen.dart';
import 'package:kakao_t_ui_exam/ui/kakao_t/kakao_t_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _screens = [
    KakaoTScreen(),
    CounterScreen(),
  ];
  int _idx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_idx],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _idx,
        onTap: (int idx) {
          setState(() {
            _idx = idx;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Kakao T',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.watch_later_outlined),
            label: '카운터',
          ),
        ],
      ),
    );
  }
}
