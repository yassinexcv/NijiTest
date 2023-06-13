import '../../../../core/domain/entities/result.dart';
import '../entities/space_media_entity.dart';

abstract class SpaceMediaRepository {
  Future<Result<SpaceMediaEntity>> getSpaceMediaByDate(DateTime date);
}
