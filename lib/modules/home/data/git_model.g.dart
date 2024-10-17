// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'git_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResultImpl _$$SearchResultImplFromJson(Map<String, dynamic> json) =>
    _$SearchResultImpl(
      totalCount: (json['totalCount'] as num?)?.toInt(),
      incompleteResults: json['incompleteResults'] as bool?,
      items: (json['items'] as List<dynamic>)
          .map((e) => GitRepository.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchResultImplToJson(_$SearchResultImpl instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'incompleteResults': instance.incompleteResults,
      'items': instance.items,
    };

_$GitRepositoryImpl _$$GitRepositoryImplFromJson(Map<String, dynamic> json) =>
    _$GitRepositoryImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      fullName: json['fullName'] as String?,
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      htmlUrl: json['htmlUrl'] as String?,
      description: json['description'] as String?,
      size: (json['size'] as num?)?.toInt(),
      forksCount: (json['forksCount'] as num?)?.toInt(),
      openIssuesCount: (json['openIssuesCount'] as num?)?.toInt(),
      forks: (json['forks'] as num?)?.toInt(),
      openIssues: (json['openIssues'] as num?)?.toInt(),
      score: (json['score'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GitRepositoryImplToJson(_$GitRepositoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'fullName': instance.fullName,
      'owner': instance.owner,
      'htmlUrl': instance.htmlUrl,
      'description': instance.description,
      'size': instance.size,
      'forksCount': instance.forksCount,
      'openIssuesCount': instance.openIssuesCount,
      'forks': instance.forks,
      'openIssues': instance.openIssues,
      'score': instance.score,
    };

_$OwnerImpl _$$OwnerImplFromJson(Map<String, dynamic> json) => _$OwnerImpl(
      login: json['login'] as String?,
      id: (json['id'] as num?)?.toInt(),
      nodeId: json['nodeId'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      gravatarId: json['gravatarId'] as String?,
      url: json['url'] as String?,
      htmlUrl: json['htmlUrl'] as String?,
      followersUrl: json['followersUrl'] as String?,
      followingUrl: json['followingUrl'] as String?,
      gistsUrl: json['gistsUrl'] as String?,
      starredUrl: json['starredUrl'] as String?,
      subscriptionsUrl: json['subscriptionsUrl'] as String?,
      organizationsUrl: json['organizationsUrl'] as String?,
      reposUrl: json['reposUrl'] as String?,
      eventsUrl: json['eventsUrl'] as String?,
      receivedEventsUrl: json['receivedEventsUrl'] as String?,
      siteAdmin: json['siteAdmin'] as bool?,
    );

Map<String, dynamic> _$$OwnerImplToJson(_$OwnerImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'nodeId': instance.nodeId,
      'avatarUrl': instance.avatarUrl,
      'gravatarId': instance.gravatarId,
      'url': instance.url,
      'htmlUrl': instance.htmlUrl,
      'followersUrl': instance.followersUrl,
      'followingUrl': instance.followingUrl,
      'gistsUrl': instance.gistsUrl,
      'starredUrl': instance.starredUrl,
      'subscriptionsUrl': instance.subscriptionsUrl,
      'organizationsUrl': instance.organizationsUrl,
      'reposUrl': instance.reposUrl,
      'eventsUrl': instance.eventsUrl,
      'receivedEventsUrl': instance.receivedEventsUrl,
      'siteAdmin': instance.siteAdmin,
    };
