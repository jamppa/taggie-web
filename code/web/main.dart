library taggie;

import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';

import 'package:taggie/route/taggie_router.dart';

class TaggieAppModule extends Module {
    TaggieAppModule() {
        bind(RouteInitializerFn, toValue: taggieRouteInitializer);
    }
}

void main() {
    applicationFactory()
        .addModule(new TaggieAppModule()).run();
}