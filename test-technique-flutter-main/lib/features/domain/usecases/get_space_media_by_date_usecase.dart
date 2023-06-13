import '../../../../core/domain/entities/result.dart';
import '../../../core/domain/usecase/usecase.dart';
import '../entities/space_media_entity.dart';
import '../repositories/space_media_repository.dart';

class GetSpaceMediaByDateUseCase implements UseCase<SpaceMediaEntity, DateTime> {
  final SpaceMediaRepository repository;

  GetSpaceMediaByDateUseCase(this.repository);

  @override
 Future<Result<SpaceMediaEntity>> call(DateTime? date) async {
    return repository.getSpaceMediaByDate(date!);
  }
}
