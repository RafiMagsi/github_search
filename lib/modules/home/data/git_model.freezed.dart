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
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get full_name => throw _privateConstructorUsedError;
  @HiveField(3)
  Owner? get owner => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get html_url => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(6)
  int? get size => throw _privateConstructorUsedError;
  @HiveField(7)
  int? get forks_count => throw _privateConstructorUsedError;
  @HiveField(8)
  int? get open_issues_count => throw _privateConstructorUsedError;
  @HiveField(9)
  int? get forks => throw _privateConstructorUsedError;
  @HiveField(10)
  int? get score => throw _privateConstructorUsedError;
  @HiveField(11)
  int? get stargazers_count => throw _privateConstructorUsedError;
  @HiveField(12)
  String? get url => throw _privateConstructorUsedError;
  @HiveField(13)
  int? get watchers_count => throw _privateConstructorUsedError;
  @HiveField(14)
  bool get bookmarked => throw _privateConstructorUsedError;

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
      {@HiveField(0) int? id,
      @HiveField(1) String? name,
      @HiveField(2) String? full_name,
      @HiveField(3) Owner? owner,
      @HiveField(4) String? html_url,
      @HiveField(5) String? description,
      @HiveField(6) int? size,
      @HiveField(7) int? forks_count,
      @HiveField(8) int? open_issues_count,
      @HiveField(9) int? forks,
      @HiveField(10) int? score,
      @HiveField(11) int? stargazers_count,
      @HiveField(12) String? url,
      @HiveField(13) int? watchers_count,
      @HiveField(14) bool bookmarked});

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
    Object? full_name = freezed,
    Object? owner = freezed,
    Object? html_url = freezed,
    Object? description = freezed,
    Object? size = freezed,
    Object? forks_count = freezed,
    Object? open_issues_count = freezed,
    Object? forks = freezed,
    Object? score = freezed,
    Object? stargazers_count = freezed,
    Object? url = freezed,
    Object? watchers_count = freezed,
    Object? bookmarked = null,
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
      full_name: freezed == full_name
          ? _value.full_name
          : full_name // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      html_url: freezed == html_url
          ? _value.html_url
          : html_url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      forks_count: freezed == forks_count
          ? _value.forks_count
          : forks_count // ignore: cast_nullable_to_non_nullable
              as int?,
      open_issues_count: freezed == open_issues_count
          ? _value.open_issues_count
          : open_issues_count // ignore: cast_nullable_to_non_nullable
              as int?,
      forks: freezed == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      stargazers_count: freezed == stargazers_count
          ? _value.stargazers_count
          : stargazers_count // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      watchers_count: freezed == watchers_count
          ? _value.watchers_count
          : watchers_count // ignore: cast_nullable_to_non_nullable
              as int?,
      bookmarked: null == bookmarked
          ? _value.bookmarked
          : bookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {@HiveField(0) int? id,
      @HiveField(1) String? name,
      @HiveField(2) String? full_name,
      @HiveField(3) Owner? owner,
      @HiveField(4) String? html_url,
      @HiveField(5) String? description,
      @HiveField(6) int? size,
      @HiveField(7) int? forks_count,
      @HiveField(8) int? open_issues_count,
      @HiveField(9) int? forks,
      @HiveField(10) int? score,
      @HiveField(11) int? stargazers_count,
      @HiveField(12) String? url,
      @HiveField(13) int? watchers_count,
      @HiveField(14) bool bookmarked});

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
    Object? full_name = freezed,
    Object? owner = freezed,
    Object? html_url = freezed,
    Object? description = freezed,
    Object? size = freezed,
    Object? forks_count = freezed,
    Object? open_issues_count = freezed,
    Object? forks = freezed,
    Object? score = freezed,
    Object? stargazers_count = freezed,
    Object? url = freezed,
    Object? watchers_count = freezed,
    Object? bookmarked = null,
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
      full_name: freezed == full_name
          ? _value.full_name
          : full_name // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      html_url: freezed == html_url
          ? _value.html_url
          : html_url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      forks_count: freezed == forks_count
          ? _value.forks_count
          : forks_count // ignore: cast_nullable_to_non_nullable
              as int?,
      open_issues_count: freezed == open_issues_count
          ? _value.open_issues_count
          : open_issues_count // ignore: cast_nullable_to_non_nullable
              as int?,
      forks: freezed == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      stargazers_count: freezed == stargazers_count
          ? _value.stargazers_count
          : stargazers_count // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      watchers_count: freezed == watchers_count
          ? _value.watchers_count
          : watchers_count // ignore: cast_nullable_to_non_nullable
              as int?,
      bookmarked: null == bookmarked
          ? _value.bookmarked
          : bookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$GitRepositoryImpl implements _GitRepository {
  _$GitRepositoryImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.name,
      @HiveField(2) this.full_name,
      @HiveField(3) this.owner,
      @HiveField(4) this.html_url,
      @HiveField(5) this.description,
      @HiveField(6) this.size,
      @HiveField(7) this.forks_count,
      @HiveField(8) this.open_issues_count,
      @HiveField(9) this.forks,
      @HiveField(10) this.score,
      @HiveField(11) this.stargazers_count,
      @HiveField(12) this.url,
      @HiveField(13) this.watchers_count,
      @HiveField(14) this.bookmarked = false});

  factory _$GitRepositoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitRepositoryImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String? name;
  @override
  @HiveField(2)
  final String? full_name;
  @override
  @HiveField(3)
  final Owner? owner;
  @override
  @HiveField(4)
  final String? html_url;
  @override
  @HiveField(5)
  final String? description;
  @override
  @HiveField(6)
  final int? size;
  @override
  @HiveField(7)
  final int? forks_count;
  @override
  @HiveField(8)
  final int? open_issues_count;
  @override
  @HiveField(9)
  final int? forks;
  @override
  @HiveField(10)
  final int? score;
  @override
  @HiveField(11)
  final int? stargazers_count;
  @override
  @HiveField(12)
  final String? url;
  @override
  @HiveField(13)
  final int? watchers_count;
  @override
  @JsonKey()
  @HiveField(14)
  final bool bookmarked;

  @override
  String toString() {
    return 'GitRepository(id: $id, name: $name, full_name: $full_name, owner: $owner, html_url: $html_url, description: $description, size: $size, forks_count: $forks_count, open_issues_count: $open_issues_count, forks: $forks, score: $score, stargazers_count: $stargazers_count, url: $url, watchers_count: $watchers_count, bookmarked: $bookmarked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitRepositoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.full_name, full_name) ||
                other.full_name == full_name) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.html_url, html_url) ||
                other.html_url == html_url) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.forks_count, forks_count) ||
                other.forks_count == forks_count) &&
            (identical(other.open_issues_count, open_issues_count) ||
                other.open_issues_count == open_issues_count) &&
            (identical(other.forks, forks) || other.forks == forks) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.stargazers_count, stargazers_count) ||
                other.stargazers_count == stargazers_count) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.watchers_count, watchers_count) ||
                other.watchers_count == watchers_count) &&
            (identical(other.bookmarked, bookmarked) ||
                other.bookmarked == bookmarked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      full_name,
      owner,
      html_url,
      description,
      size,
      forks_count,
      open_issues_count,
      forks,
      score,
      stargazers_count,
      url,
      watchers_count,
      bookmarked);

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
      {@HiveField(0) final int? id,
      @HiveField(1) final String? name,
      @HiveField(2) final String? full_name,
      @HiveField(3) final Owner? owner,
      @HiveField(4) final String? html_url,
      @HiveField(5) final String? description,
      @HiveField(6) final int? size,
      @HiveField(7) final int? forks_count,
      @HiveField(8) final int? open_issues_count,
      @HiveField(9) final int? forks,
      @HiveField(10) final int? score,
      @HiveField(11) final int? stargazers_count,
      @HiveField(12) final String? url,
      @HiveField(13) final int? watchers_count,
      @HiveField(14) final bool bookmarked}) = _$GitRepositoryImpl;

  factory _GitRepository.fromJson(Map<String, dynamic> json) =
      _$GitRepositoryImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get name;
  @override
  @HiveField(2)
  String? get full_name;
  @override
  @HiveField(3)
  Owner? get owner;
  @override
  @HiveField(4)
  String? get html_url;
  @override
  @HiveField(5)
  String? get description;
  @override
  @HiveField(6)
  int? get size;
  @override
  @HiveField(7)
  int? get forks_count;
  @override
  @HiveField(8)
  int? get open_issues_count;
  @override
  @HiveField(9)
  int? get forks;
  @override
  @HiveField(10)
  int? get score;
  @override
  @HiveField(11)
  int? get stargazers_count;
  @override
  @HiveField(12)
  String? get url;
  @override
  @HiveField(13)
  int? get watchers_count;
  @override
  @HiveField(14)
  bool get bookmarked;

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
  @HiveField(0)
  String? get login => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get nodeId => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get avatar_url => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get gravatar_id => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get url => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get html_url => throw _privateConstructorUsedError;

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
      {@HiveField(0) String? login,
      @HiveField(1) int? id,
      @HiveField(2) String? nodeId,
      @HiveField(3) String? avatar_url,
      @HiveField(4) String? gravatar_id,
      @HiveField(5) String? url,
      @HiveField(6) String? html_url});
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
    Object? avatar_url = freezed,
    Object? gravatar_id = freezed,
    Object? url = freezed,
    Object? html_url = freezed,
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
      avatar_url: freezed == avatar_url
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String?,
      gravatar_id: freezed == gravatar_id
          ? _value.gravatar_id
          : gravatar_id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      html_url: freezed == html_url
          ? _value.html_url
          : html_url // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@HiveField(0) String? login,
      @HiveField(1) int? id,
      @HiveField(2) String? nodeId,
      @HiveField(3) String? avatar_url,
      @HiveField(4) String? gravatar_id,
      @HiveField(5) String? url,
      @HiveField(6) String? html_url});
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
    Object? avatar_url = freezed,
    Object? gravatar_id = freezed,
    Object? url = freezed,
    Object? html_url = freezed,
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
      avatar_url: freezed == avatar_url
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String?,
      gravatar_id: freezed == gravatar_id
          ? _value.gravatar_id
          : gravatar_id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      html_url: freezed == html_url
          ? _value.html_url
          : html_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1)
class _$OwnerImpl implements _Owner {
  _$OwnerImpl(
      {@HiveField(0) this.login,
      @HiveField(1) this.id,
      @HiveField(2) this.nodeId,
      @HiveField(3) this.avatar_url,
      @HiveField(4) this.gravatar_id,
      @HiveField(5) this.url,
      @HiveField(6) this.html_url});

  factory _$OwnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnerImplFromJson(json);

  @override
  @HiveField(0)
  final String? login;
  @override
  @HiveField(1)
  final int? id;
  @override
  @HiveField(2)
  final String? nodeId;
  @override
  @HiveField(3)
  final String? avatar_url;
  @override
  @HiveField(4)
  final String? gravatar_id;
  @override
  @HiveField(5)
  final String? url;
  @override
  @HiveField(6)
  final String? html_url;

  @override
  String toString() {
    return 'Owner(login: $login, id: $id, nodeId: $nodeId, avatar_url: $avatar_url, gravatar_id: $gravatar_id, url: $url, html_url: $html_url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId) &&
            (identical(other.avatar_url, avatar_url) ||
                other.avatar_url == avatar_url) &&
            (identical(other.gravatar_id, gravatar_id) ||
                other.gravatar_id == gravatar_id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.html_url, html_url) ||
                other.html_url == html_url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, login, id, nodeId, avatar_url, gravatar_id, url, html_url);

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
      {@HiveField(0) final String? login,
      @HiveField(1) final int? id,
      @HiveField(2) final String? nodeId,
      @HiveField(3) final String? avatar_url,
      @HiveField(4) final String? gravatar_id,
      @HiveField(5) final String? url,
      @HiveField(6) final String? html_url}) = _$OwnerImpl;

  factory _Owner.fromJson(Map<String, dynamic> json) = _$OwnerImpl.fromJson;

  @override
  @HiveField(0)
  String? get login;
  @override
  @HiveField(1)
  int? get id;
  @override
  @HiveField(2)
  String? get nodeId;
  @override
  @HiveField(3)
  String? get avatar_url;
  @override
  @HiveField(4)
  String? get gravatar_id;
  @override
  @HiveField(5)
  String? get url;
  @override
  @HiveField(6)
  String? get html_url;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OwnerImplCopyWith<_$OwnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
