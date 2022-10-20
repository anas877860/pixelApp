import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixel_app/failures/main_failures.dart';
import 'package:pixel_app/models/image_details/comment_list_resp/comment_list_resp.dart';
import 'package:pixel_app/services/image_details_service.dart';

part 'image_details_event.dart';
part 'image_details_state.dart';
part 'image_details_bloc.freezed.dart';

class ImageDetailsBloc extends Bloc<ImageDetailsEvent, ImageDetailsState> {
  final _service = ImageDetailsService();
  ImageDetailsBloc() : super(ImageDetailsState.initial()) {
    on<ImageDetailsEvent>((event, emit) async {
      emit(state.copyWith(isError: false, isLoading: true));
      final _result = await _service.getAll();
      emit(
        _result.fold(
          (MainFailure f) => const ImageDetailsState(
              commentList: [], isLoading: false, isError: true),
          (CommentListResp resp) => ImageDetailsState(
              commentList: resp.data, isLoading: false, isError: false),
        ),
      );
    });
  }
}
