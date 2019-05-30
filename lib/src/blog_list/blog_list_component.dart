import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';
import 'package:dkk_wp/src/dao/bean/blog.dart';
import 'package:dkk_wp/src/route/route_paths.dart';
import 'package:dkk_wp/src/route/routes.dart';

import 'blog_list_service.dart';

@Component(
  selector: 'blogs',
  styleUrls: ['blog_list_component.css'],
  templateUrl: 'blog_list_component.html',
  directives: [
    MaterialCheckboxComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    materialInputDirectives,
    NgIf,
    NgFor,
    routerDirectives
  ],
  providers: [ClassProvider(BlogListService)],
  exports: [RoutePaths, Routes],
)
class BlogListComponent implements OnInit {
  final BlogListService blogListService;

  List<Blog> items = [];

  BlogListComponent(this.blogListService);

  @override
  Future<Null> ngOnInit() async {
    items = await blogListService.getBlogList();
  }

  blogUrl(int id) => RoutePaths.blog.toUrl(
        parameters: {RoutePaths.blog_id_pare: '$id'},
      );
}
