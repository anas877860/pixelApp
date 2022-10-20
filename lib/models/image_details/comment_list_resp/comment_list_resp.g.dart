// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_list_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentListResp _$CommentListRespFromJson(Map<String, dynamic> json) =>
    CommentListResp(
      data: (json['data'] as List<dynamic>)
          .map((e) => CommentListData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CommentListRespToJson(CommentListResp instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

CommentListData _$CommentListDataFromJson(Map<String, dynamic> json) =>
    CommentListData(
      id: json['id'] as String,
      message: json['message'] as String,
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
      post: json['post'] as String,
      publishDate: DateTime.parse(json['publishDate'] as String),
    );

Map<String, dynamic> _$CommentListDataToJson(CommentListData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'owner': instance.owner,
      'post': instance.post,
      'publishDate': instance.publishDate.toIso8601String(),
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
