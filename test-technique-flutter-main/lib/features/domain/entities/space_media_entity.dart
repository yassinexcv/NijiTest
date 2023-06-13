import 'package:freezed_annotation/freezed_annotation.dart';

part 'space_media_entity.freezed.dart';

@freezed
class SpaceMediaEntity with _$SpaceMediaEntity {
  const factory SpaceMediaEntity({
    required String media_type,
    required String title,
    required String url,
  }) = _SpaceMediaEntity;
}
