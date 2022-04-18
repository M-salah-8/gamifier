// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_tdo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameDTO _$$_GameDTOFromJson(Map<String, dynamic> json) => _$_GameDTO(
      id: json['id'] as String,
      admin: json['admin'] as String,
      usersId:
          (json['usersId'] as List<dynamic>).map((e) => e as String).toList(),
      name: json['name'] as String,
      noOfUsers: json['noOfUsers'] as int,
      gameTodos: (json['gameTodos'] as List<dynamic>)
          .map((e) => GameTodoTDO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GameDTOToJson(_$_GameDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'admin': instance.admin,
      'usersId': instance.usersId,
      'name': instance.name,
      'noOfUsers': instance.noOfUsers,
      'gameTodos': instance.gameTodos.map((e) => e.toJson()).toList(),
    };

_$_GameTodoTDO _$$_GameTodoTDOFromJson(Map<String, dynamic> json) =>
    _$_GameTodoTDO(
      id: json['id'] as String,
      todoName: json['todoName'] as String,
      times: json['times'] as int,
      points: json['points'] as int,
      done: json['done'] as bool,
    );

Map<String, dynamic> _$$_GameTodoTDOToJson(_$_GameTodoTDO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'todoName': instance.todoName,
      'times': instance.times,
      'points': instance.points,
      'done': instance.done,
    };

_$_UserScoreTDO _$$_UserScoreTDOFromJson(Map<String, dynamic> json) =>
    _$_UserScoreTDO(
      gameId: json['gameId'] as String,
      gamifierUserId: json['gamifierUserId'] as String,
      userName: json['userName'] as String,
      level: json['level'] as int,
      gameTodos: (json['gameTodos'] as List<dynamic>)
          .map((e) => GameTodoTDO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserScoreTDOToJson(_$_UserScoreTDO instance) =>
    <String, dynamic>{
      'gameId': instance.gameId,
      'gamifierUserId': instance.gamifierUserId,
      'userName': instance.userName,
      'level': instance.level,
      'gameTodos': instance.gameTodos.map((e) => e.toJson()).toList(),
    };

_$_GameDetailsTDO _$$_GameDetailsTDOFromJson(Map<String, dynamic> json) =>
    _$_GameDetailsTDO(
      game: GameDTO.fromJson(json['game'] as Map<String, dynamic>),
      usersScores: (json['usersScores'] as List<dynamic>)
          .map((e) => UserScoreTDO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GameDetailsTDOToJson(_$_GameDetailsTDO instance) =>
    <String, dynamic>{
      'game': instance.game.toJson(),
      'usersScores': instance.usersScores.map((e) => e.toJson()).toList(),
    };

_$_UserGamesListTDO _$$_UserGamesListTDOFromJson(Map<String, dynamic> json) =>
    _$_UserGamesListTDO(
      userId: json['userId'] as String,
      gamekeys: (json['gamekeys'] as List<dynamic>)
          .map((e) => GameKeyTDO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserGamesListTDOToJson(_$_UserGamesListTDO instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'gamekeys': instance.gamekeys.map((e) => e.toJson()).toList(),
    };

_$_GameKeyTDO _$$_GameKeyTDOFromJson(Map<String, dynamic> json) =>
    _$_GameKeyTDO(
      gameId: json['gameId'] as String,
      gameName: json['gameName'] as String,
    );

Map<String, dynamic> _$$_GameKeyTDOToJson(_$_GameKeyTDO instance) =>
    <String, dynamic>{
      'gameId': instance.gameId,
      'gameName': instance.gameName,
    };
