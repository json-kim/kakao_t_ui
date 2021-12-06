import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/model/ad.dart';
import 'package:kakao_t_ui_exam/model/menu.dart';

final List<Menu> fakeMenus = List.generate(
    7,
    (idx) => idx.isOdd
        ? Menu(
            title: '택시',
            imageUrl:
                'https://item.kakaocdn.net/do/b5d3d6a7b67fbf5afdaffb79fffbf8b14022de826f725e10df604bf1b9725cfd',
            isFavorite: true,
          )
        : Menu(
            title: '버스',
            imageUrl:
                'https://item.kakaocdn.net/do/b5d3d6a7b67fbf5afdaffb79fffbf8b1ce9463e040a07a9462a54df43e1d73f1',
            isFavorite: false,
          ));

final List<Ad> fakeAds = [
  Ad(
    title: '일찍 좀 일어나지 그랬어',
    text: '기왕 늦은 거 편하게 택시타고 가자',
    color: Colors.green,
    imageUrl:
        'https://mblogthumb-phinf.pstatic.net/20160127_177/krazymouse_1453865104404DjQIi_PNG/%C4%AB%C4%AB%BF%C0%C7%C1%B7%BB%C1%EE_%B6%F3%C0%CC%BE%F0.png?type=w2',
  ),
  Ad(
    title: '일어나 회사가야지',
    text: '기왕 늦은 거 편하게 택시타고 가자',
    color: Colors.blue,
    imageUrl:
        'https://item.kakaocdn.net/do/c5c470298d527ef65eb52883f0f186c48b566dca82634c93f811198148a26065',
  ),
  Ad(
    title: '벌써 이게 몇번째야',
    text: '기왕 늦은 거 편하게 택시타고 가자',
    color: Colors.indigo,
    imageUrl:
        'https://item.kakaocdn.net/do/b5d3d6a7b67fbf5afdaffb79fffbf8b14022de826f725e10df604bf1b9725cfd',
  ),
];
