part of 'image_details_bloc.dart';

@freezed
class ImageDetailsEvent with _$ImageDetailsEvent {
  const factory ImageDetailsEvent.loadCommentList() = LoadCommentList;
}