part of 'search_home_bloc.dart';

@freezed
class SearchHomeEvent with _$SearchHomeEvent {
  const factory SearchHomeEvent.loadPostList() = LoadPostList;
}