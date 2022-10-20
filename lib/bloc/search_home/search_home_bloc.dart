import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixel_app/failures/main_failures.dart';
import 'package:pixel_app/models/search_home/post_list_resp/post_list_resp.dart';
import 'package:pixel_app/services/search_home_services.dart';

part 'search_home_event.dart';
part 'search_home_state.dart';
part 'search_home_bloc.freezed.dart';

class SearchHomeBloc extends Bloc<SearchHomeEvent, SearchHomeState> {
  final _service = SearchHomeService();
  SearchHomeBloc() : super(SearchHomeState.initial()) {
    on<LoadPostList>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        isError: false,
      ));

      final _result = await _service.getAll();
      emit(_result.fold(
          (MainFailure f) => const SearchHomeState(
              postList: [], isError: true, isLoading: false),
          (PostListResp resp) => SearchHomeState(
              postList: resp.data, isError: false, isLoading: false)));
    });
  }
}
