// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_list_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostListResp _$PostListRespFromJson(Map<String, dynamic> json) => PostListResp(
      data: (json['data'] as List<dynamic>)
          .map((e) => PostListData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PostListRespToJson(PostListResp instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

PostListData _$PostListDataFromJson(Map<String, dynamic> json) => PostListData(
      id: json['id'] as String,
      image: json['image'] as String,
      likes: json['likes'] as int,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      text: json['text'] as String,
      publishDate: DateTime.parse(json['publishDate'] as String),
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostListDataToJson(PostListData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'likes': instance.likes,
      'tags': instance.tags,
      'text': instance.text,
      'publishDate': instance.publishDate.toIso8601String(),
      'owner': instance.owner,
    };

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      id: json['id'] as String,
      title: json['title'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      picture: json['picture'] as String,
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'picture': instance.picture,
    };
