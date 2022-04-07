// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_tdo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameDTO _$$_GameDTOFromJson(Map<String, dynamic> json) => _$_GameDTO(
      id: json['id'] as String,
      level: json['level'] as int,
      name: json['name'] as String,
      gameTodos: (json['gameTodos'] as List<dynamic>)
          .map((e) => GameTodoDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GameDTOToJson(_$_GameDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'level': instance.level,
      'name': instance.name,
      'gameTodos': instance.gameTodos.map((e) => e.toJson()).toList(),
    };

_$_GameTodoDTO _$$_GameTodoDTOFromJson(Map<String, dynamic> json) =>
    _$_GameTodoDTO(
      id: json['id'] as String,
      todoName: json['todoName'] as String,
      times: json['times'] as int,
      points: json['points'] as int,
      done: json['done'] as bool,
    );

Map<String, dynamic> _$$_GameTodoDTOToJson(_$_GameTodoDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'todoName': instance.todoName,
      'times': instance.times,
      'points': instance.points,
      'done': instance.done,
    };
