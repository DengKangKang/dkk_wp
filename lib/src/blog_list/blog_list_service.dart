import 'dart:async';

import 'package:angular/core.dart';
import 'package:dkk_wp/src/dao/bean/blog.dart';

/// Mock service emulating access to a to-do list stored on a server.
@Injectable()
class BlogListService {
  List<Blog> mockBlogList = <Blog>[
    Blog(
      1,
      '月亮与六便士',
      ' is a great article. is a great article. is a great article. is a great article.',
    ),
    Blog(
      2,
      '百年孤独',
      ' is a great article. is a great article. is a great article. is a great article.',
    ),
    Blog(
      3,
      '平凡的世界',
      ' is a great article. is a great article. is a great article. is a great article.',
    ),
    Blog(
      4,
      '罗生门',
      ' is a great article. is a great article. is a great article. is a great article.',
    ),
    Blog(
      5,
      '黄金时代',
      ' is a great article. is a great article. is a great article. is a great article.',
    ),
    Blog(
      6,
      '土地的成长',
      ' is a great article. is a great article. is a great article. is a great article.',
    ),
    Blog(
      7,
      '福尔赛世家',
      ' is a great article. is a great article. is a great article. is a great article.',
    ),
    Blog(
      8,
      '白鹿原',
      ' is a great article. is a great article. is a great article. is a great article.',
    ),
    Blog(
      9,
      '活着',
      ' is a great article. is a great article. is a great article. is a great article.',
    ),
    Blog(
      10,
      '彷徨',
      ' is a great article. is a great article. is a great article. is a great article.',
    ),
    Blog(
      11,
      '呐喊',
      ' is a great article. is a great article. is a great article. is a great article.',
    ),
    Blog(
      12,
      '狂人日记',
      ' is a great article. is a great article. is a great article. is a great article.',
    ),
    Blog(
      13,
      '朝花夕拾',
      ' is a great article. is a great article. is a great article. is a great article.',
    ),
    Blog(
      14,
      '骆驼祥子',
      ' is a great article. is a great article. is a great article. is a great article.',
    ),
  ];

  Future<List<Blog>> getBlogList() async => mockBlogList;

  Future<Blog> getBlog(int id) async =>
      mockBlogList.firstWhere((item) => item.id == id);
}
