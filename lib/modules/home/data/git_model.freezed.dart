// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'git_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) {
  return _SearchResult.fromJson(json);
}

/// @nodoc
mixin _$SearchResult {
  int? get totalCount => throw _privateConstructorUsedError;
  bool? get incompleteResults => throw _privateConstructorUsedError;
  List<GitRepository> get items => throw _privateConstructorUsedError;

  /// Serializes this SearchResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchResultCopyWith<SearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultCopyWith<$Res> {
  factory $SearchResultCopyWith(
          SearchResult value, $Res Function(SearchResult) then) =
      _$SearchResultCopyWithImpl<$Res, SearchResult>;
  @useResult
  $Res call(
      {int? totalCount, bool? incompleteResults, List<GitRepository> items});
}

/// @nodoc
class _$SearchResultCopyWithImpl<$Res, $Val extends SearchResult>
    implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? incompleteResults = freezed,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      incompleteResults: freezed == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GitRepository>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultImplCopyWith<$Res>
    implements $SearchResultCopyWith<$Res> {
  factory _$$SearchResultImplCopyWith(
          _$SearchResultImpl value, $Res Function(_$SearchResultImpl) then) =
      __$$SearchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? totalCount, bool? incompleteResults, List<GitRepository> items});
}

/// @nodoc
class __$$SearchResultImplCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res, _$SearchResultImpl>
    implements _$$SearchResultImplCopyWith<$Res> {
  __$$SearchResultImplCopyWithImpl(
      _$SearchResultImpl _value, $Res Function(_$SearchResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? incompleteResults = freezed,
    Object? items = null,
  }) {
    return _then(_$SearchResultImpl(
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      incompleteResults: freezed == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GitRepository>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResultImpl implements _SearchResult {
  _$SearchResultImpl(
      {required this.totalCount,
      required this.incompleteResults,
      required final List<GitRepository> items})
      : _items = items;

  factory _$SearchResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultImplFromJson(json);

  @override
  final int? totalCount;
  @override
  final bool? incompleteResults;
  final List<GitRepository> _items;
  @override
  List<GitRepository> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'SearchResult(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.incompleteResults, incompleteResults) ||
                other.incompleteResults == incompleteResults) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalCount, incompleteResults,
      const DeepCollectionEquality().hash(_items));

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultImplCopyWith<_$SearchResultImpl> get copyWith =>
      __$$SearchResultImplCopyWithImpl<_$SearchResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultImplToJson(
      this,
    );
  }
}

abstract class _SearchResult implements SearchResult {
  factory _SearchResult(
      {required final int? totalCount,
      required final bool? incompleteResults,
      required final List<GitRepository> items}) = _$SearchResultImpl;

  factory _SearchResult.fromJson(Map<String, dynamic> json) =
      _$SearchResultImpl.fromJson;

  @override
  int? get totalCount;
  @override
  bool? get incompleteResults;
  @override
  List<GitRepository> get items;

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchResultImplCopyWith<_$SearchResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GitRepository _$GitRepositoryFromJson(Map<String, dynamic> json) {
  return _GitRepository.fromJson(json);
}

/// @nodoc
mixin _$GitRepository {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  Owner? get owner => throw _privateConstructorUsedError;
  String? get htmlUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  int? get forksCount => throw _privateConstructorUsedError;
  int? get openIssuesCount => throw _privateConstructorUsedError;
  int? get forks => throw _privateConstructorUsedError;
  int? get openIssues => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;

  /// Serializes this GitRepository to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GitRepository
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GitRepositoryCopyWith<GitRepository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitRepositoryCopyWith<$Res> {
  factory $GitRepositoryCopyWith(
          GitRepository value, $Res Function(GitRepository) then) =
      _$GitRepositoryCopyWithImpl<$Res, GitRepository>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? fullName,
      Owner? owner,
      String? htmlUrl,
      String? description,
      int? size,
      int? forksCount,
      int? openIssuesCount,
      int? forks,
      int? openIssues,
      int? score});

  $OwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class _$GitRepositoryCopyWithImpl<$Res, $Val extends GitRepository>
    implements $GitRepositoryCopyWith<$Res> {
  _$GitRepositoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GitRepository
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? fullName = freezed,
    Object? owner = freezed,
    Object? htmlUrl = freezed,
    Object? description = freezed,
    Object? size = freezed,
    Object? forksCount = freezed,
    Object? openIssuesCount = freezed,
    Object? forks = freezed,
    Object? openIssues = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      forksCount: freezed == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      openIssuesCount: freezed == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      forks: freezed == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int?,
      openIssues: freezed == openIssues
          ? _value.openIssues
          : openIssues // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of GitRepository
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $OwnerCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GitRepositoryImplCopyWith<$Res>
    implements $GitRepositoryCopyWith<$Res> {
  factory _$$GitRepositoryImplCopyWith(
          _$GitRepositoryImpl value, $Res Function(_$GitRepositoryImpl) then) =
      __$$GitRepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? fullName,
      Owner? owner,
      String? htmlUrl,
      String? description,
      int? size,
      int? forksCount,
      int? openIssuesCount,
      int? forks,
      int? openIssues,
      int? score});

  @override
  $OwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$GitRepositoryImplCopyWithImpl<$Res>
    extends _$GitRepositoryCopyWithImpl<$Res, _$GitRepositoryImpl>
    implements _$$GitRepositoryImplCopyWith<$Res> {
  __$$GitRepositoryImplCopyWithImpl(
      _$GitRepositoryImpl _value, $Res Function(_$GitRepositoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of GitRepository
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? fullName = freezed,
    Object? owner = freezed,
    Object? htmlUrl = freezed,
    Object? description = freezed,
    Object? size = freezed,
    Object? forksCount = freezed,
    Object? openIssuesCount = freezed,
    Object? forks = freezed,
    Object? openIssues = freezed,
    Object? score = freezed,
  }) {
    return _then(_$GitRepositoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      forksCount: freezed == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      openIssuesCount: freezed == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      forks: freezed == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int?,
      openIssues: freezed == openIssues
          ? _value.openIssues
          : openIssues // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitRepositoryImpl implements _GitRepository {
  _$GitRepositoryImpl(
      {this.id,
      this.name,
      this.fullName,
      this.owner,
      this.htmlUrl,
      this.description,
      this.size,
      this.forksCount,
      this.openIssuesCount,
      this.forks,
      this.openIssues,
      this.score});

  factory _$GitRepositoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitRepositoryImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? fullName;
  @override
  final Owner? owner;
  @override
  final String? htmlUrl;
  @override
  final String? description;
  @override
  final int? size;
  @override
  final int? forksCount;
  @override
  final int? openIssuesCount;
  @override
  final int? forks;
  @override
  final int? openIssues;
  @override
  final int? score;

  @override
  String toString() {
    return 'GitRepository(id: $id, name: $name, fullName: $fullName, owner: $owner, htmlUrl: $htmlUrl, description: $description, size: $size, forksCount: $forksCount, openIssuesCount: $openIssuesCount, forks: $forks, openIssues: $openIssues, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitRepositoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.forksCount, forksCount) ||
                other.forksCount == forksCount) &&
            (identical(other.openIssuesCount, openIssuesCount) ||
                other.openIssuesCount == openIssuesCount) &&
            (identical(other.forks, forks) || other.forks == forks) &&
            (identical(other.openIssues, openIssues) ||
                other.openIssues == openIssues) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      fullName,
      owner,
      htmlUrl,
      description,
      size,
      forksCount,
      openIssuesCount,
      forks,
      openIssues,
      score);

  /// Create a copy of GitRepository
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GitRepositoryImplCopyWith<_$GitRepositoryImpl> get copyWith =>
      __$$GitRepositoryImplCopyWithImpl<_$GitRepositoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitRepositoryImplToJson(
      this,
    );
  }
}

abstract class _GitRepository implements GitRepository {
  factory _GitRepository(
      {final int? id,
      final String? name,
      final String? fullName,
      final Owner? owner,
      final String? htmlUrl,
      final String? description,
      final int? size,
      final int? forksCount,
      final int? openIssuesCount,
      final int? forks,
      final int? openIssues,
      final int? score}) = _$GitRepositoryImpl;

  factory _GitRepository.fromJson(Map<String, dynamic> json) =
      _$GitRepositoryImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get fullName;
  @override
  Owner? get owner;
  @override
  String? get htmlUrl;
  @override
  String? get description;
  @override
  int? get size;
  @override
  int? get forksCount;
  @override
  int? get openIssuesCount;
  @override
  int? get forks;
  @override
  int? get openIssues;
  @override
  int? get score;

  /// Create a copy of GitRepository
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GitRepositoryImplCopyWith<_$GitRepositoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Owner _$OwnerFromJson(Map<String, dynamic> json) {
  return _Owner.fromJson(json);
}

/// @nodoc
mixin _$Owner {
  String? get login => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get nodeId => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get gravatarId => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get htmlUrl => throw _privateConstructorUsedError;
  String? get followersUrl => throw _privateConstructorUsedError;
  String? get followingUrl => throw _privateConstructorUsedError;
  String? get gistsUrl => throw _privateConstructorUsedError;
  String? get starredUrl => throw _privateConstructorUsedError;
  String? get subscriptionsUrl => throw _privateConstructorUsedError;
  String? get organizationsUrl => throw _privateConstructorUsedError;
  String? get reposUrl => throw _privateConstructorUsedError;
  String? get eventsUrl => throw _privateConstructorUsedError;
  String? get receivedEventsUrl => throw _privateConstructorUsedError;
  bool? get siteAdmin => throw _privateConstructorUsedError;

  /// Serializes this Owner to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OwnerCopyWith<Owner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerCopyWith<$Res> {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) then) =
      _$OwnerCopyWithImpl<$Res, Owner>;
  @useResult
  $Res call(
      {String? login,
      int? id,
      String? nodeId,
      String? avatarUrl,
      String? gravatarId,
      String? url,
      String? htmlUrl,
      String? followersUrl,
      String? followingUrl,
      String? gistsUrl,
      String? starredUrl,
      String? subscriptionsUrl,
      String? organizationsUrl,
      String? reposUrl,
      String? eventsUrl,
      String? receivedEventsUrl,
      bool? siteAdmin});
}

/// @nodoc
class _$OwnerCopyWithImpl<$Res, $Val extends Owner>
    implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = freezed,
    Object? id = freezed,
    Object? nodeId = freezed,
    Object? avatarUrl = freezed,
    Object? gravatarId = freezed,
    Object? url = freezed,
    Object? htmlUrl = freezed,
    Object? followersUrl = freezed,
    Object? followingUrl = freezed,
    Object? gistsUrl = freezed,
    Object? starredUrl = freezed,
    Object? subscriptionsUrl = freezed,
    Object? organizationsUrl = freezed,
    Object? reposUrl = freezed,
    Object? eventsUrl = freezed,
    Object? receivedEventsUrl = freezed,
    Object? siteAdmin = freezed,
  }) {
    return _then(_value.copyWith(
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nodeId: freezed == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      gravatarId: freezed == gravatarId
          ? _value.gravatarId
          : gravatarId // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      followersUrl: freezed == followersUrl
          ? _value.followersUrl
          : followersUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      followingUrl: freezed == followingUrl
          ? _value.followingUrl
          : followingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      gistsUrl: freezed == gistsUrl
          ? _value.gistsUrl
          : gistsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      starredUrl: freezed == starredUrl
          ? _value.starredUrl
          : starredUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionsUrl: freezed == subscriptionsUrl
          ? _value.subscriptionsUrl
          : subscriptionsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationsUrl: freezed == organizationsUrl
          ? _value.organizationsUrl
          : organizationsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      reposUrl: freezed == reposUrl
          ? _value.reposUrl
          : reposUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      eventsUrl: freezed == eventsUrl
          ? _value.eventsUrl
          : eventsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedEventsUrl: freezed == receivedEventsUrl
          ? _value.receivedEventsUrl
          : receivedEventsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      siteAdmin: freezed == siteAdmin
          ? _value.siteAdmin
          : siteAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OwnerImplCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$$OwnerImplCopyWith(
          _$OwnerImpl value, $Res Function(_$OwnerImpl) then) =
      __$$OwnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? login,
      int? id,
      String? nodeId,
      String? avatarUrl,
      String? gravatarId,
      String? url,
      String? htmlUrl,
      String? followersUrl,
      String? followingUrl,
      String? gistsUrl,
      String? starredUrl,
      String? subscriptionsUrl,
      String? organizationsUrl,
      String? reposUrl,
      String? eventsUrl,
      String? receivedEventsUrl,
      bool? siteAdmin});
}

/// @nodoc
class __$$OwnerImplCopyWithImpl<$Res>
    extends _$OwnerCopyWithImpl<$Res, _$OwnerImpl>
    implements _$$OwnerImplCopyWith<$Res> {
  __$$OwnerImplCopyWithImpl(
      _$OwnerImpl _value, $Res Function(_$OwnerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = freezed,
    Object? id = freezed,
    Object? nodeId = freezed,
    Object? avatarUrl = freezed,
    Object? gravatarId = freezed,
    Object? url = freezed,
    Object? htmlUrl = freezed,
    Object? followersUrl = freezed,
    Object? followingUrl = freezed,
    Object? gistsUrl = freezed,
    Object? starredUrl = freezed,
    Object? subscriptionsUrl = freezed,
    Object? organizationsUrl = freezed,
    Object? reposUrl = freezed,
    Object? eventsUrl = freezed,
    Object? receivedEventsUrl = freezed,
    Object? siteAdmin = freezed,
  }) {
    return _then(_$OwnerImpl(
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nodeId: freezed == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      gravatarId: freezed == gravatarId
          ? _value.gravatarId
          : gravatarId // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      followersUrl: freezed == followersUrl
          ? _value.followersUrl
          : followersUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      followingUrl: freezed == followingUrl
          ? _value.followingUrl
          : followingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      gistsUrl: freezed == gistsUrl
          ? _value.gistsUrl
          : gistsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      starredUrl: freezed == starredUrl
          ? _value.starredUrl
          : starredUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionsUrl: freezed == subscriptionsUrl
          ? _value.subscriptionsUrl
          : subscriptionsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationsUrl: freezed == organizationsUrl
          ? _value.organizationsUrl
          : organizationsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      reposUrl: freezed == reposUrl
          ? _value.reposUrl
          : reposUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      eventsUrl: freezed == eventsUrl
          ? _value.eventsUrl
          : eventsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedEventsUrl: freezed == receivedEventsUrl
          ? _value.receivedEventsUrl
          : receivedEventsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      siteAdmin: freezed == siteAdmin
          ? _value.siteAdmin
          : siteAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OwnerImpl implements _Owner {
  _$OwnerImpl(
      {this.login,
      this.id,
      this.nodeId,
      this.avatarUrl,
      this.gravatarId,
      this.url,
      this.htmlUrl,
      this.followersUrl,
      this.followingUrl,
      this.gistsUrl,
      this.starredUrl,
      this.subscriptionsUrl,
      this.organizationsUrl,
      this.reposUrl,
      this.eventsUrl,
      this.receivedEventsUrl,
      this.siteAdmin});

  factory _$OwnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnerImplFromJson(json);

  @override
  final String? login;
  @override
  final int? id;
  @override
  final String? nodeId;
  @override
  final String? avatarUrl;
  @override
  final String? gravatarId;
  @override
  final String? url;
  @override
  final String? htmlUrl;
  @override
  final String? followersUrl;
  @override
  final String? followingUrl;
  @override
  final String? gistsUrl;
  @override
  final String? starredUrl;
  @override
  final String? subscriptionsUrl;
  @override
  final String? organizationsUrl;
  @override
  final String? reposUrl;
  @override
  final String? eventsUrl;
  @override
  final String? receivedEventsUrl;
  @override
  final bool? siteAdmin;

  @override
  String toString() {
    return 'Owner(login: $login, id: $id, nodeId: $nodeId, avatarUrl: $avatarUrl, gravatarId: $gravatarId, url: $url, htmlUrl: $htmlUrl, followersUrl: $followersUrl, followingUrl: $followingUrl, gistsUrl: $gistsUrl, starredUrl: $starredUrl, subscriptionsUrl: $subscriptionsUrl, organizationsUrl: $organizationsUrl, reposUrl: $reposUrl, eventsUrl: $eventsUrl, receivedEventsUrl: $receivedEventsUrl, siteAdmin: $siteAdmin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.gravatarId, gravatarId) ||
                other.gravatarId == gravatarId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.followersUrl, followersUrl) ||
                other.followersUrl == followersUrl) &&
            (identical(other.followingUrl, followingUrl) ||
                other.followingUrl == followingUrl) &&
            (identical(other.gistsUrl, gistsUrl) ||
                other.gistsUrl == gistsUrl) &&
            (identical(other.starredUrl, starredUrl) ||
                other.starredUrl == starredUrl) &&
            (identical(other.subscriptionsUrl, subscriptionsUrl) ||
                other.subscriptionsUrl == subscriptionsUrl) &&
            (identical(other.organizationsUrl, organizationsUrl) ||
                other.organizationsUrl == organizationsUrl) &&
            (identical(other.reposUrl, reposUrl) ||
                other.reposUrl == reposUrl) &&
            (identical(other.eventsUrl, eventsUrl) ||
                other.eventsUrl == eventsUrl) &&
            (identical(other.receivedEventsUrl, receivedEventsUrl) ||
                other.receivedEventsUrl == receivedEventsUrl) &&
            (identical(other.siteAdmin, siteAdmin) ||
                other.siteAdmin == siteAdmin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      login,
      id,
      nodeId,
      avatarUrl,
      gravatarId,
      url,
      htmlUrl,
      followersUrl,
      followingUrl,
      gistsUrl,
      starredUrl,
      subscriptionsUrl,
      organizationsUrl,
      reposUrl,
      eventsUrl,
      receivedEventsUrl,
      siteAdmin);

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnerImplCopyWith<_$OwnerImpl> get copyWith =>
      __$$OwnerImplCopyWithImpl<_$OwnerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnerImplToJson(
      this,
    );
  }
}

abstract class _Owner implements Owner {
  factory _Owner(
      {final String? login,
      final int? id,
      final String? nodeId,
      final String? avatarUrl,
      final String? gravatarId,
      final String? url,
      final String? htmlUrl,
      final String? followersUrl,
      final String? followingUrl,
      final String? gistsUrl,
      final String? starredUrl,
      final String? subscriptionsUrl,
      final String? organizationsUrl,
      final String? reposUrl,
      final String? eventsUrl,
      final String? receivedEventsUrl,
      final bool? siteAdmin}) = _$OwnerImpl;

  factory _Owner.fromJson(Map<String, dynamic> json) = _$OwnerImpl.fromJson;

  @override
  String? get login;
  @override
  int? get id;
  @override
  String? get nodeId;
  @override
  String? get avatarUrl;
  @override
  String? get gravatarId;
  @override
  String? get url;
  @override
  String? get htmlUrl;
  @override
  String? get followersUrl;
  @override
  String? get followingUrl;
  @override
  String? get gistsUrl;
  @override
  String? get starredUrl;
  @override
  String? get subscriptionsUrl;
  @override
  String? get organizationsUrl;
  @override
  String? get reposUrl;
  @override
  String? get eventsUrl;
  @override
  String? get receivedEventsUrl;
  @override
  bool? get siteAdmin;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OwnerImplCopyWith<_$OwnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
