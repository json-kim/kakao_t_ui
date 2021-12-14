import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/data/fake_data.dart';
import 'package:kakao_t_ui_exam/ui/kakao_t/detail_screen.dart';

import 'components/ad_view.dart';
import 'components/menu_widget.dart';

class KakaoTScreen extends StatefulWidget {
  const KakaoTScreen({Key? key}) : super(key: key);

  @override
  State<KakaoTScreen> createState() => _KakaoTScreenState();
}

class _KakaoTScreenState extends State<KakaoTScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          '카카오 T',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          _buildMenu(context),
          _buildAds(controller, context),
          _buildNotice(),
        ],
      ),
    );
  }

  Widget _buildMenu(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: 5 / 6,
      shrinkWrap: true,
      crossAxisCount: 4,
      children: fakeMenus
          .map(
            (menu) => GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(menu: menu),
                  ),
                );
              },
              child: MenuWidget(menu: menu),
            ),
          )
          .toList(),
    );
  }

  Widget _buildAds(PageController controller, BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            initialPage: _index,
            autoPlay: true,
            aspectRatio: 2,
            viewportFraction: 1,
            onPageChanged: (idx, _) {
              setState(() {
                _index = idx;
              });
            },
          ),
          items: fakeAds.map((e) => AdView(ad: e)).toList(),
        ),
        Positioned(
          left: 0,
          bottom: 8,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: fakeAds.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => controller.animateToPage(
                  entry.key,
                  curve: Curves.easeIn,
                  duration: const Duration(milliseconds: 100),
                ),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: entry.key == _index ? Colors.black : Colors.white,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildNotice() {
    return Column(
      children: List.generate(
        50,
        (idx) => ListTile(
          leading: const Icon(Icons.campaign_outlined),
          title: Text('공지 $idx'),
          trailing: const Icon(Icons.navigate_next_outlined),
          onTap: () {},
        ),
      ),
    );
  }
}
