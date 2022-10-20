part of 'search_home_bloc.dart';

@freezed
class SearchHomeState with _$SearchHomeState {
  const factory SearchHomeState({
    required List<PostListData> postList,
    required bool isError,
    required bool isLoading,
  }) = _SearchHomeState;
  factory SearchHomeState.initial() =>
      const SearchHomeState(postList: [], isError: false, isLoading: false);
}
