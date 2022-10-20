import 'package:json_annotation/json_annotation.dart';

part 'post_list_resp.g.dart';

@JsonSerializable()
class PostListResp {
  @JsonKey(name: 'data')
  List<PostListData> data;

  PostListResp({
    required this.data,
  });

  factory PostListResp.fromJson(Map<String, dynamic> json) {
    return _$PostListRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PostListRespToJson(this);
}

@JsonSerializable()
class PostListData {
  @JsonKey(name: 'id')
  String id;
  @JsonKey(name: 'image')
  String image;
  @JsonKey(name: 'likes')
  int likes;
  @JsonKey(name: 'tags')
  List<String> tags;
  @JsonKey(name: 'text')
  String text;
  @JsonKey(name: 'publishDate')
  DateTime publishDate;
  @JsonKey(name: 'owner')
  Owner owner;

  PostListData({
    required this.id,
    required this.image,
    required this.likes,
    required this.tags,
    required this.text,
    required this.publishDate,
    required this.owner,
  });

  factory PostListData.fromJson(Map<String, dynamic> json) =>
      _$PostListDataFromJson(json);

  Map<String, dynamic> toJson() => _$PostListDataToJson(this);
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
