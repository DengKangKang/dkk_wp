// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'dart:html' as prefix0;

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:markdown/markdown.dart';
import 'package:dkk_wp/src/blog_list/blog_list_service.dart';
import 'package:dkk_wp/src/route/route_paths.dart';

@Component(
  selector: 'blog',
  templateUrl: 'blog_component.html',
  styleUrls: ['blog_component.css'],
  providers: [ClassProvider(BlogListService)],
)
class BlogComponent implements AfterViewInit, OnActivate {
  final BlogListService blogListService;
  final HtmlElement _elementRef;

  BlogComponent(this._elementRef, this.blogListService);

  String blog;
  prefix0.Element group;

  @override
  void ngAfterViewInit() {
    group = _elementRef.querySelector('#group');
    group.style.color = 'white';
  }

  @override
  Future onActivate(RouterState previous, RouterState current) async {
    var blogId = current.parameters[RoutePaths.blog_id_pare];
    var blog = await blogListService.getBlog(int.parse(blogId));
    group.innerHtml = markdownToHtml(blog.blogTitle + blog.blogContent);
  }
}
