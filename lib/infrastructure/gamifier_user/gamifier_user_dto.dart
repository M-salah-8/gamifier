import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/core/value_objects.dart';
import 'package:gamifier/domain/user/gamifier_user.dart';

part 'gamifier_user_dto.freezed.dart';
part 'gamifier_user_dto.g.dart';

@freezed
abstract class GamifierUserTDO implements _$GamifierUserTDO {
  const GamifierUserTDO._();
  const factory GamifierUserTDO({
    required String id,
    required String name,
    required String email,
  }) = _GamifierUserTDO;

  factory GamifierUserTDO.fromJson(Map<String, dynamic> json) =>
      _$GamifierUserTDOFromJson(json);

  factory GamifierUserTDO.fromDomain(GamifierUser user) =>
      GamifierUserTDO(id: user.id.value, name: user.name, email: user.email);
  GamifierUser toDomain() {
    return GamifierUser(
        id: UniqueId.fromUniqueString(id), name: name, email: email);
  }

  factory GamifierUserTDO.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> docMap = doc.data() as Map<String, dynamic>;
    return GamifierUserTDO.fromJson(docMap);
  }
}
