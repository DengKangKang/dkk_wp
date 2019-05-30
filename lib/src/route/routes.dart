import 'package:angular_router/angular_router.dart';
import 'package:dkk_wp/src/route/route_paths.dart';
import 'package:dkk_wp/src/todo_list/todo_list_component.template.dart'
    as todo_list_template;
import 'package:dkk_wp/src/blog/blog_component.template.dart'
    as blog_template;
import 'package:dkk_wp/src/blog_list/blog_list_component.template.dart'
    as blog_list_template;
import 'package:dkk_wp/src/presentations/presentations_component.template.dart'
    as presentations_template;
import 'route_paths.dart';

class Routes {
  static final main = RouteDefinition.redirect(
    path: '',
    redirectTo: RoutePaths.main.toUrl(),
  );

  static final todos = RouteDefinition(
    routePath: RoutePaths.todos,
    component: todo_list_template.TodoListComponentNgFactory,
  );

  static final blog = RouteDefinition(
    routePath: RoutePaths.blog,
    component: blog_template.BlogComponentNgFactory,
  );

  static final blogs = RouteDefinition(
    routePath: RoutePaths.blogs,
    component: blog_list_template.BlogListComponentNgFactory,
  );

  static final presentations = RouteDefinition(
    routePath: RoutePaths.presentations,
    component: presentations_template.PresentationsComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    main,
    todos,
    blog,
    blogs,
    presentations,
  ];
}
