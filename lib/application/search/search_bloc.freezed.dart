// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initilize,
    required TResult Function(String movieQuery) searchMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initilize,
    TResult? Function(String movieQuery)? searchMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initilize,
    TResult Function(String movieQuery)? searchMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initilize,
    required TResult Function(SearchMovies value) searchMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initilize,
    TResult? Function(SearchMovies value)? searchMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initilize,
    TResult Function(SearchMovies value)? searchMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeImpl implements Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'SearchEvent.initilize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initilize,
    required TResult Function(String movieQuery) searchMovies,
  }) {
    return initilize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initilize,
    TResult? Function(String movieQuery)? searchMovies,
  }) {
    return initilize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initilize,
    TResult Function(String movieQuery)? searchMovies,
    required TResult orElse(),
  }) {
    if (initilize != null) {
      return initilize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initilize,
    required TResult Function(SearchMovies value) searchMovies,
  }) {
    return initilize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initilize,
    TResult? Function(SearchMovies value)? searchMovies,
  }) {
    return initilize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initilize,
    TResult Function(SearchMovies value)? searchMovies,
    required TResult orElse(),
  }) {
    if (initilize != null) {
      return initilize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements SearchEvent {
  const factory Initialize() = _$InitializeImpl;
}

/// @nodoc
abstract class _$$SearchMoviesImplCopyWith<$Res> {
  factory _$$SearchMoviesImplCopyWith(
          _$SearchMoviesImpl value, $Res Function(_$SearchMoviesImpl) then) =
      __$$SearchMoviesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String movieQuery});
}

/// @nodoc
class __$$SearchMoviesImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchMoviesImpl>
    implements _$$SearchMoviesImplCopyWith<$Res> {
  __$$SearchMoviesImplCopyWithImpl(
      _$SearchMoviesImpl _value, $Res Function(_$SearchMoviesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieQuery = null,
  }) {
    return _then(_$SearchMoviesImpl(
      movieQuery: null == movieQuery
          ? _value.movieQuery
          : movieQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchMoviesImpl implements SearchMovies {
  const _$SearchMoviesImpl({required this.movieQuery});

  @override
  final String movieQuery;

  @override
  String toString() {
    return 'SearchEvent.searchMovies(movieQuery: $movieQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchMoviesImpl &&
            (identical(other.movieQuery, movieQuery) ||
                other.movieQuery == movieQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieQuery);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchMoviesImplCopyWith<_$SearchMoviesImpl> get copyWith =>
      __$$SearchMoviesImplCopyWithImpl<_$SearchMoviesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initilize,
    required TResult Function(String movieQuery) searchMovies,
  }) {
    return searchMovies(movieQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initilize,
    TResult? Function(String movieQuery)? searchMovies,
  }) {
    return searchMovies?.call(movieQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initilize,
    TResult Function(String movieQuery)? searchMovies,
    required TResult orElse(),
  }) {
    if (searchMovies != null) {
      return searchMovies(movieQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initilize,
    required TResult Function(SearchMovies value) searchMovies,
  }) {
    return searchMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initilize,
    TResult? Function(SearchMovies value)? searchMovies,
  }) {
    return searchMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initilize,
    TResult Function(SearchMovies value)? searchMovies,
    required TResult orElse(),
  }) {
    if (searchMovies != null) {
      return searchMovies(this);
    }
    return orElse();
  }
}

abstract class SearchMovies implements SearchEvent {
  const factory SearchMovies({required final String movieQuery}) =
      _$SearchMoviesImpl;

  String get movieQuery;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchMoviesImplCopyWith<_$SearchMoviesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<SearchResultData> get searchResultList =>
      throw _privateConstructorUsedError;
  List<DownloadsModel> get searchIdleList => throw _privateConstructorUsedError;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<SearchResultData> searchResultList,
      List<DownloadsModel> searchIdleList});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? searchResultList = null,
    Object? searchIdleList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      searchResultList: null == searchResultList
          ? _value.searchResultList
          : searchResultList // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData>,
      searchIdleList: null == searchIdleList
          ? _value.searchIdleList
          : searchIdleList // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<SearchResultData> searchResultList,
      List<DownloadsModel> searchIdleList});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? searchResultList = null,
    Object? searchIdleList = null,
  }) {
    return _then(_$SearchStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      searchResultList: null == searchResultList
          ? _value._searchResultList
          : searchResultList // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData>,
      searchIdleList: null == searchIdleList
          ? _value._searchIdleList
          : searchIdleList // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModel>,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {required this.isLoading,
      required this.isError,
      required final List<SearchResultData> searchResultList,
      required final List<DownloadsModel> searchIdleList})
      : _searchResultList = searchResultList,
        _searchIdleList = searchIdleList;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<SearchResultData> _searchResultList;
  @override
  List<SearchResultData> get searchResultList {
    if (_searchResultList is EqualUnmodifiableListView)
      return _searchResultList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResultList);
  }

  final List<DownloadsModel> _searchIdleList;
  @override
  List<DownloadsModel> get searchIdleList {
    if (_searchIdleList is EqualUnmodifiableListView) return _searchIdleList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchIdleList);
  }

  @override
  String toString() {
    return 'SearchState(isLoading: $isLoading, isError: $isError, searchResultList: $searchResultList, searchIdleList: $searchIdleList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._searchResultList, _searchResultList) &&
            const DeepCollectionEquality()
                .equals(other._searchIdleList, _searchIdleList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      const DeepCollectionEquality().hash(_searchResultList),
      const DeepCollectionEquality().hash(_searchIdleList));

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final bool isLoading,
      required final bool isError,
      required final List<SearchResultData> searchResultList,
      required final List<DownloadsModel> searchIdleList}) = _$SearchStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<SearchResultData> get searchResultList;
  @override
  List<DownloadsModel> get searchIdleList;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
