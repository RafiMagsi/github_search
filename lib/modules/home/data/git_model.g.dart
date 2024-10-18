// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'git_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GitRepositoryImplAdapter extends TypeAdapter<_$GitRepositoryImpl> {
  @override
  final int typeId = 0;

  @override
  _$GitRepositoryImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$GitRepositoryImpl(
      id: fields[0] as int?,
      name: fields[1] as String?,
      full_name: fields[2] as String?,
      owner: fields[3] as Owner?,
      html_url: fields[4] as String?,
      description: fields[5] as String?,
      size: fields[6] as int?,
      forks_count: fields[7] as int?,
      open_issues_count: fields[8] as int?,
      forks: fields[9] as int?,
      score: fields[10] as int?,
      stargazers_count: fields[11] as int?,
      url: fields[12] as String?,
      watchers_count: fields[13] as int?,
      bookmarked: fields[14] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, _$GitRepositoryImpl obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.full_name)
      ..writeByte(3)
      ..write(obj.owner)
      ..writeByte(4)
      ..write(obj.html_url)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.size)
      ..writeByte(7)
      ..write(obj.forks_count)
      ..writeByte(8)
      ..write(obj.open_issues_count)
      ..writeByte(9)
      ..write(obj.forks)
      ..writeByte(10)
      ..write(obj.score)
      ..writeByte(11)
      ..write(obj.stargazers_count)
      ..writeByte(12)
      ..write(obj.url)
      ..writeByte(13)
      ..write(obj.watchers_count)
      ..writeByte(14)
      ..write(obj.bookmarked);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GitRepositoryImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OwnerImplAdapter extends TypeAdapter<_$OwnerImpl> {
  @override
  final int typeId = 1;

  @override
  _$OwnerImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$OwnerImpl(
      login: fields[0] as String?,
      id: fields[1] as int?,
      nodeId: fields[2] as String?,
      avatar_url: fields[3] as String?,
      gravatar_id: fields[4] as String?,
      url: fields[5] as String?,
      html_url: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$OwnerImpl obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.login)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.nodeId)
      ..writeByte(3)
      ..write(obj.avatar_url)
      ..writeByte(4)
      ..write(obj.gravatar_id)
      ..writeByte(5)
      ..write(obj.url)
      ..writeByte(6)
      ..write(obj.html_url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OwnerImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
      bookmarked: json['bookmarked'] as bool? ?? false,
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
      'bookmarked': instance.bookmarked,
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
