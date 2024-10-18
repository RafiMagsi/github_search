// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [GitHubRepoView]
class GitHubRepoRoute extends PageRouteInfo<void> {
  const GitHubRepoRoute({List<PageRouteInfo>? children})
      : super(
          GitHubRepoRoute.name,
          initialChildren: children,
        );

  static const String name = 'GitHubRepoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const GitHubRepoView();
    },
  );
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
