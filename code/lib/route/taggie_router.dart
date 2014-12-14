library taggie_router;

import 'package:angular/angular.dart';

void taggieRouteInitializer(Router router, RouteViewFactory routeViews) {
    routeViews.configure({
        'index': ngRoute(path: '/', view: 'view/home.html', defaultRoute: true)
        });
}