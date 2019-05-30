// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:dkk_wp/src/route/route_paths.dart';
import 'package:dkk_wp/src/route/routes.dart';



@Component(
  selector: 'main',
  templateUrl: 'app_component.html',
  styleUrls: [
    'app_component.css',
  ],
  directives: [routerDirectives],
  exports: [RoutePaths, Routes],
)
class AppComponent {



}