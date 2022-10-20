import 'package:json_annotation/json_annotation.dart';

part 'comment_list_resp.g.dart';

@JsonSerializable()
class CommentListResp {
  @JsonKey(name: 'data')
  List<CommentListData> data;

  CommentListResp({
    required this.data,
  });

  factory CommentListResp.fromJson(Map<String, dynamic> json) {
    return _$CommentListRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CommentListRespToJson(this);
}

@JsonSerializable()
class CommentListData {
  @JsonKey(name: 'id')
  String id;
  @JsonKey(name: 'message')
  String message;
  @JsonKey(name: 'owner')
  Owner owner;
  @JsonKey(name: 'post')
  String post;
  @JsonKey(name: 'publishDate')
  DateTime publishDate;

  CommentListData(
      {required this.id,
      required this.message,
      required this.owner,
      required this.post,
      required this.publishDate});

  factory CommentListData.fromJson(Map<String, dynamic> json) =>
      _$CommentListDataFromJson(json);

  Map<String, dynamic> toJson() => _$CommentListDataToJson(this);
}

@JsonSerializable()
class Owner {
  @JsonKey(name: 'id')
  String id;
  @JsonKey(name: 'title')
  String title;
  @JsonKey(name: 'firstName')
  String firstName;
  @JsonKey(name: 'lastName')
  String lastName;
  @JsonKey(name: 'picture')
  String picture;

  Owner(
      {required this.id,
      required this.title,
      required this.firstName,
      required this.lastName,
      required this.picture});

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}
