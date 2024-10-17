// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return HomeView(key: args.key);
    },
  );
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [RepositoryDetailsView]
class RepositoryDetailsRoute extends PageRouteInfo<RepositoryDetailsRouteArgs> {
  RepositoryDetailsRoute({
    Key? key,
    required GitRepository repo,
    List<PageRouteInfo>? children,
  }) : super(
          RepositoryDetailsRoute.name,
          args: RepositoryDetailsRouteArgs(
            key: key,
            repo: repo,
          ),
          initialChildren: children,
        );

  static const String name = 'RepositoryDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RepositoryDetailsRouteArgs>();
      return RepositoryDetailsView(
        key: args.key,
        repo: args.repo,
      );
    },
  );
}

class RepositoryDetailsRouteArgs {
  const RepositoryDetailsRouteArgs({
    this.key,
    required this.repo,
  });

  final Key? key;

  final GitRepository repo;

  @override
  String toString() {
    return 'RepositoryDetailsRouteArgs{key: $key, repo: $repo}';
  }
}
