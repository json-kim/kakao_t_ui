import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/data/fake_data.dart';
import 'package:kakao_t_ui_exam/ui/kakao_t/detail_screen.dart';

import 'components/ad_view.dart';
import 'components/menu_widget.dart';

class KakaoTScreen extends StatelessWidget {
  const KakaoTScreen({Key key}) : super(key: key);

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
          _buildAds(controller),
          _buildNotice(),
        ],
      ),
    );
  }

  Widget _buildMenu(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
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
                    builder: (context) =>
                        DetailScreen(title: menu.title, imgUrl: menu.imageUrl),
                  ),
                );
              },
              child: MenuWidget(menu: menu),
            ),
          )
          .toList(),
    );
  }

  Widget _buildAds(PageController controller) {
    return SizedBox(
      height: 150,
      child: PageView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        children: fakeAds.map((e) => AdView(ad: e)).toList(),
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
