part of 'image_details_bloc.dart';

@freezed
class ImageDetailsState with _$ImageDetailsState {
  const factory ImageDetailsState({
   required List<CommentListData>commentList,
   required bool isLoading,
   required bool isError

  }) = _ImageDetailsState;
  factory ImageDetailsState.initial()=> const ImageDetailsState(commentList: [], isLoading:false, isError:false);
}
