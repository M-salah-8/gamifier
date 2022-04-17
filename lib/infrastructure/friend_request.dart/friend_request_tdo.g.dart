// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_request_tdo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FriendRequestTDO _$$_FriendRequestTDOFromJson(Map<String, dynamic> json) =>
    _$_FriendRequestTDO(
      id: json['id'] as String,
      sender: GamifierUserTDO.fromJson(json['sender'] as Map<String, dynamic>),
      receiver:
          GamifierUserTDO.fromJson(json['receiver'] as Map<String, dynamic>),
      requestStatus: json['requestStatus'] as String,
    );

Map<String, dynamic> _$$_FriendRequestTDOToJson(_$_FriendRequestTDO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sender': instance.sender.toJson(),
      'receiver': instance.receiver.toJson(),
      'requestStatus': instance.requestStatus,
    };
