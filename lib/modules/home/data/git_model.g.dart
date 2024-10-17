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
      full_name: json['full_name'] as String?,
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      html_url: json['html_url'] as String?,
      description: json['description'] as String?,
      size: (json['size'] as num?)?.toInt(),
      forks_count: (json['forks_count'] as num?)?.toInt(),
      open_issues_count: (json['open_issues_count'] as num?)?.toInt(),
      forks: (json['forks'] as num?)?.toInt(),
      score: (json['score'] as num?)?.toInt(),
      stargazers_count: (json['stargazers_count'] as num?)?.toInt(),
      url: json['url'] as String?,
      watchers_count: (json['watchers_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GitRepositoryImplToJson(_$GitRepositoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.full_name,
      'owner': instance.owner,
      'html_url': instance.html_url,
      'description': instance.description,
      'size': instance.size,
      'forks_count': instance.forks_count,
      'open_issues_count': instance.open_issues_count,
      'forks': instance.forks,
      'score': instance.score,
      'stargazers_count': instance.stargazers_count,
      'url': instance.url,
      'watchers_count': instance.watchers_count,
    };

_$OwnerImpl _$$OwnerImplFromJson(Map<String, dynamic> json) => _$OwnerImpl(
      login: json['login'] as String?,
      id: (json['id'] as num?)?.toInt(),
      nodeId: json['nodeId'] as String?,
      avatar_url: json['avatar_url'] as String?,
      gravatar_id: json['gravatar_id'] as String?,
      url: json['url'] as String?,
      html_url: json['html_url'] as String?,
    );

Map<String, dynamic> _$$OwnerImplToJson(_$OwnerImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'nodeId': instance.nodeId,
      'avatar_url': instance.avatar_url,
      'gravatar_id': instance.gravatar_id,
      'url': instance.url,
      'html_url': instance.html_url,
    };
