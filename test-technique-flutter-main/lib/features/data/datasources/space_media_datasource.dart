import 'package:global_configuration/global_configuration.dart';
import 'package:nasa_picture_of_the_day/core/utils/converters/date_to_string_converter.dart';

import '../../../../core/data/datasources/remote_data_source.dart';
import '../../../core/data/datasources/endpoints/nasa_endpoints.dart';

abstract class SpaceMediaRemoteDataSource {
  Future<dynamic> getSpaceMediaByDate(DateTime date);
}

class SpaceMediaRemoteDataSourceImpl extends RemoteDataSource
    implements SpaceMediaRemoteDataSource {
  SpaceMediaRemoteDataSourceImpl({required super.dio});

  @override
  Future<dynamic> getSpaceMediaByDate(DateTime date) {
    final endpoint = NasaEndpoints.apod(
      GlobalConfiguration().getValue('apiKey'),
      DateToStringConverter.convert(date),
    );

    return performGetRequestApi(
      apiEndpoint: endpoint,
    );
  }
}
