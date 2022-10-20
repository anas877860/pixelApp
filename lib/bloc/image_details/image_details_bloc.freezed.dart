// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCommentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCommentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCommentList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCommentList value) loadCommentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCommentList value)? loadCommentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCommentList value)? loadCommentList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDetailsEventCopyWith<$Res> {
  factory $ImageDetailsEventCopyWith(
          ImageDetailsEvent value, $Res Function(ImageDetailsEvent) then) =
      _$ImageDetailsEventCopyWithImpl<$Res, ImageDetailsEvent>;
}

/// @nodoc
class _$ImageDetailsEventCopyWithImpl<$Res, $Val extends ImageDetailsEvent>
    implements $ImageDetailsEventCopyWith<$Res> {
  _$ImageDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadCommentListCopyWith<$Res> {
  factory _$$LoadCommentListCopyWith(
          _$LoadCommentList value, $Res Function(_$LoadCommentList) then) =
      __$$LoadCommentListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCommentListCopyWithImpl<$Res>
    extends _$ImageDetailsEventCopyWithImpl<$Res, _$LoadCommentList>
    implements _$$LoadCommentListCopyWith<$Res> {
  __$$LoadCommentListCopyWithImpl(
      _$LoadCommentList _value, $Res Function(_$LoadCommentList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadCommentList implements LoadCommentList {
  const _$LoadCommentList();

  @override
  String toString() {
    return 'ImageDetailsEvent.loadCommentList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadCommentList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCommentList,
  }) {
    return loadCommentList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCommentList,
  }) {
    return loadCommentList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCommentList,
    required TResult orElse(),
  }) {
    if (loadCommentList != null) {
      return loadCommentList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCommentList value) loadCommentList,
  }) {
    return loadCommentList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCommentList value)? loadCommentList,
  }) {
    return loadCommentList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCommentList value)? loadCommentList,
    required TResult orElse(),
  }) {
    if (loadCommentList != null) {
      return loadCommentList(this);
    }
    return orElse();
  }
}

abstract class LoadCommentList implements ImageDetailsEvent {
  const factory LoadCommentList() = _$LoadCommentList;
}

/// @nodoc
mixin _$ImageDetailsState {
  List<CommentListData> get commentList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageDetailsStateCopyWith<ImageDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDetailsStateCopyWith<$Res> {
  factory $ImageDetailsStateCopyWith(
          ImageDetailsState value, $Res Function(ImageDetailsState) then) =
      _$ImageDetailsStateCopyWithImpl<$Res, ImageDetailsState>;
  @useResult
  $Res call({List<CommentListData> commentList, bool isLoading, bool isError});
}

/// @nodoc
class _$ImageDetailsStateCopyWithImpl<$Res, $Val extends ImageDetailsState>
    implements $ImageDetailsStateCopyWith<$Res> {
  _$ImageDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      commentList: null == commentList
          ? _value.commentList
          : commentList // ignore: cast_nullable_to_non_nullable
              as List<CommentListData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageDetailsStateCopyWith<$Res>
    implements $ImageDetailsStateCopyWith<$Res> {
  factory _$$_ImageDetailsStateCopyWith(_$_ImageDetailsState value,
          $Res Function(_$_ImageDetailsState) then) =
      __$$_ImageDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CommentListData> commentList, bool isLoading, bool isError});
}

/// @nodoc
class __$$_ImageDetailsStateCopyWithImpl<$Res>
    extends _$ImageDetailsStateCopyWithImpl<$Res, _$_ImageDetailsState>
    implements _$$_ImageDetailsStateCopyWith<$Res> {
  __$$_ImageDetailsStateCopyWithImpl(
      _$_ImageDetailsState _value, $Res Function(_$_ImageDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$_ImageDetailsState(
      commentList: null == commentList
          ? _value._commentList
          : commentList // ignore: cast_nullable_to_non_nullable
              as List<CommentListData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ImageDetailsState implements _ImageDetailsState {
  const _$_ImageDetailsState(
      {required final List<CommentListData> commentList,
      required this.isLoading,
      required this.isError})
      : _commentList = commentList;

  final List<CommentListData> _commentList;
  @override
  List<CommentListData> get commentList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commentList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'ImageDetailsState(commentList: $commentList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageDetailsState &&
            const DeepCollectionEquality()
                .equals(other._commentList, _commentList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_commentList), isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageDetailsStateCopyWith<_$_ImageDetailsState> get copyWith =>
      __$$_ImageDetailsStateCopyWithImpl<_$_ImageDetailsState>(
          this, _$identity);
}

abstract class _ImageDetailsState implements ImageDetailsState {
  const factory _ImageDetailsState(
      {required final List<CommentListData> commentList,
      required final bool isLoading,
      required final bool isError}) = _$_ImageDetailsState;

  @override
  List<CommentListData> get commentList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_ImageDetailsStateCopyWith<_$_ImageDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
