// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchHomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadPostList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadPostList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadPostList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPostList value) loadPostList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadPostList value)? loadPostList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPostList value)? loadPostList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchHomeEventCopyWith<$Res> {
  factory $SearchHomeEventCopyWith(
          SearchHomeEvent value, $Res Function(SearchHomeEvent) then) =
      _$SearchHomeEventCopyWithImpl<$Res, SearchHomeEvent>;
}

/// @nodoc
class _$SearchHomeEventCopyWithImpl<$Res, $Val extends SearchHomeEvent>
    implements $SearchHomeEventCopyWith<$Res> {
  _$SearchHomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadPostListCopyWith<$Res> {
  factory _$$LoadPostListCopyWith(
          _$LoadPostList value, $Res Function(_$LoadPostList) then) =
      __$$LoadPostListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadPostListCopyWithImpl<$Res>
    extends _$SearchHomeEventCopyWithImpl<$Res, _$LoadPostList>
    implements _$$LoadPostListCopyWith<$Res> {
  __$$LoadPostListCopyWithImpl(
      _$LoadPostList _value, $Res Function(_$LoadPostList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadPostList implements LoadPostList {
  const _$LoadPostList();

  @override
  String toString() {
    return 'SearchHomeEvent.loadPostList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadPostList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadPostList,
  }) {
    return loadPostList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadPostList,
  }) {
    return loadPostList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadPostList,
    required TResult orElse(),
  }) {
    if (loadPostList != null) {
      return loadPostList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPostList value) loadPostList,
  }) {
    return loadPostList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadPostList value)? loadPostList,
  }) {
    return loadPostList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPostList value)? loadPostList,
    required TResult orElse(),
  }) {
    if (loadPostList != null) {
      return loadPostList(this);
    }
    return orElse();
  }
}

abstract class LoadPostList implements SearchHomeEvent {
  const factory LoadPostList() = _$LoadPostList;
}

/// @nodoc
mixin _$SearchHomeState {
  List<PostListData> get postList => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchHomeStateCopyWith<SearchHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchHomeStateCopyWith<$Res> {
  factory $SearchHomeStateCopyWith(
          SearchHomeState value, $Res Function(SearchHomeState) then) =
      _$SearchHomeStateCopyWithImpl<$Res, SearchHomeState>;
  @useResult
  $Res call({List<PostListData> postList, bool isError, bool isLoading});
}

/// @nodoc
class _$SearchHomeStateCopyWithImpl<$Res, $Val extends SearchHomeState>
    implements $SearchHomeStateCopyWith<$Res> {
  _$SearchHomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postList = null,
    Object? isError = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      postList: null == postList
          ? _value.postList
          : postList // ignore: cast_nullable_to_non_nullable
              as List<PostListData>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchHomeStateCopyWith<$Res>
    implements $SearchHomeStateCopyWith<$Res> {
  factory _$$_SearchHomeStateCopyWith(
          _$_SearchHomeState value, $Res Function(_$_SearchHomeState) then) =
      __$$_SearchHomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PostListData> postList, bool isError, bool isLoading});
}

/// @nodoc
class __$$_SearchHomeStateCopyWithImpl<$Res>
    extends _$SearchHomeStateCopyWithImpl<$Res, _$_SearchHomeState>
    implements _$$_SearchHomeStateCopyWith<$Res> {
  __$$_SearchHomeStateCopyWithImpl(
      _$_SearchHomeState _value, $Res Function(_$_SearchHomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postList = null,
    Object? isError = null,
    Object? isLoading = null,
  }) {
    return _then(_$_SearchHomeState(
      postList: null == postList
          ? _value._postList
          : postList // ignore: cast_nullable_to_non_nullable
              as List<PostListData>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SearchHomeState implements _SearchHomeState {
  const _$_SearchHomeState(
      {required final List<PostListData> postList,
      required this.isError,
      required this.isLoading})
      : _postList = postList;

  final List<PostListData> _postList;
  @override
  List<PostListData> get postList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postList);
  }

  @override
  final bool isError;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'SearchHomeState(postList: $postList, isError: $isError, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchHomeState &&
            const DeepCollectionEquality().equals(other._postList, _postList) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_postList), isError, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchHomeStateCopyWith<_$_SearchHomeState> get copyWith =>
      __$$_SearchHomeStateCopyWithImpl<_$_SearchHomeState>(this, _$identity);
}

abstract class _SearchHomeState implements SearchHomeState {
  const factory _SearchHomeState(
      {required final List<PostListData> postList,
      required final bool isError,
      required final bool isLoading}) = _$_SearchHomeState;

  @override
  List<PostListData> get postList;
  @override
  bool get isError;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_SearchHomeStateCopyWith<_$_SearchHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
