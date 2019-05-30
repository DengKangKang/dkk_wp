import 'package:angular_router/angular_router.dart';

class RoutePaths {
  static const blog_id_pare = "blog_id_pare";

  static final main = RoutePath(path: 'main');
  static final todos = RoutePath(path: 'todo_list');
  static final blogs = RoutePath(path: 'blogs');
  static final blog = RoutePath(path: '${blogs.path}/:$blog_id_pare');

  static final presentations = RoutePath(path: 'presentations');
}
