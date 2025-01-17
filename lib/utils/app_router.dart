import 'package:LyvelyExercise/modules/home/presentation/git_repo_details_view.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../modules/home/data/git_model.dart';
import '../modules/home/presentation/github_repo_view.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page|View,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: GitHubRepoRoute.page, initial: true),
        AutoRoute(page: RepositoryDetailsRoute.page, path: '/repository_details/:repo'),
      ];
}
