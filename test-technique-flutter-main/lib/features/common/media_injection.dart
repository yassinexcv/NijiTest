// part of '../../../di/injection_container.dart';

// void _featureMedia() {
//   sl
//     // DataSources
//     ..injectDataSource<SpaceMediaRemoteDataSource>(
//       () => SpaceMediaRemoteDataSourceImpl(dio: dio),
//     )

//     // Repositories
//     ..injectRepository<SpaceMediaRepository>(
//       () => SpaceMediaRepositoryImpl(datasource: sl()),
//     )

//     // UseCases
//     ..injectUseCase(() => GetSpaceMediaByDateUseCase(sl()))

//     // Blocs
//     ..injectBloc(() => MediaCubit(usecase: sl()));

//   // Interfaces
// }
