import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/data/fake_data.dart';
import 'package:kakao_t_ui_exam/ui/home/components/ad_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '카카오 T',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    final PageController controller = PageController(initialPage: 0);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          ..._buildMenu(),
          _buildAds(controller),
          _buildNotice(),
        ],
      ),
    );
  }

  List<Widget> _buildMenu() {
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Image.network(
                'https://blog.kakaocdn.net/dn/b66mQ6/btqSLGB5uFO/Jk0uW2ThNQx7HWFJjzqxnk/img.jpg',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '택시',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Column(
            children: [
              Image.network(
                'https://blog.kakaocdn.net/dn/b66mQ6/btqSLGB5uFO/Jk0uW2ThNQx7HWFJjzqxnk/img.jpg',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '택시',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Column(
            children: [
              Image.network(
                'https://blog.kakaocdn.net/dn/b66mQ6/btqSLGB5uFO/Jk0uW2ThNQx7HWFJjzqxnk/img.jpg',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '택시',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Column(
            children: [
              Image.network(
                'https://blog.kakaocdn.net/dn/b66mQ6/btqSLGB5uFO/Jk0uW2ThNQx7HWFJjzqxnk/img.jpg',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '택시',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
      SizedBox(height: 30),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Image.network(
                'https://blog.kakaocdn.net/dn/b66mQ6/btqSLGB5uFO/Jk0uW2ThNQx7HWFJjzqxnk/img.jpg',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '택시',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Column(
            children: [
              Image.network(
                'https://blog.kakaocdn.net/dn/b66mQ6/btqSLGB5uFO/Jk0uW2ThNQx7HWFJjzqxnk/img.jpg',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '택시',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Column(
            children: [
              Image.network(
                'https://blog.kakaocdn.net/dn/b66mQ6/btqSLGB5uFO/Jk0uW2ThNQx7HWFJjzqxnk/img.jpg',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '택시',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Container(
            width: 80,
          )
        ],
      ),
    ];
  }

  Widget _buildAds(PageController controller) {
    return SizedBox(
      height: 150,
      child: PageView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        children: fakeAds.map((e) => AdView(ad: e)).toList(),
        // children: <Widget>[
        //   AdView(
        //     ad: fakeAds[0],
        //   ),
        //   AdView(
        //     ad: fakeAds[1],
        //   ),
        //   AdView(
        //     ad: fakeAds[2],
        //   ),
        // ],
      ),
    );
  }

  Widget _buildNotice() {
    return Column(
      children: List.generate(
        50,
        (idx) => ListTile(
          leading: Icon(Icons.campaign_outlined),
          title: Text('공지 $idx'),
          trailing: Icon(Icons.navigate_next_outlined),
          onTap: () {},
        ),
      ),
    );
  }
}
