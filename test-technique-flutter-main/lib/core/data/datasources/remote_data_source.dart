import 'dart:async';

import 'package:dio/dio.dart';
import 'package:global_configuration/global_configuration.dart';

import '../../errors/exceptions.dart';

abstract class RemoteDataSource {
  late String _baseUrl;

  RemoteDataSource({
    required this.dio,
    String? baseUrl,
  }) {
    _baseUrl = baseUrl ?? GlobalConfiguration().getValue('api_base_url');

    _initDioClient();
  }

  final Dio dio;

  int get millisecondsTimeoutWs => const Duration(seconds: 10).inMilliseconds;

  void _initDioClient() {
    dio.interceptors.clear();

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options
            ..validateStatus = (status) {
              return status! < 400;
            }
            ..connectTimeout = millisecondsTimeoutWs
            ..receiveTimeout = millisecondsTimeoutWs;

          handler.next(options);
        },
        onResponse: (response, handler) {
          handler.next(response);
        },
        onError: (error, handler) async {
          handler.next(error);
        },
      ),
    );
    dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  Future<T> performDeleteRequestApi<T>({
    required String apiEndpoint,
  }) async {
    Future<Response<T>> request() => dio.delete<T>(
          _path(apiEndpoint),
        );

    return _performRequestApi<T>(request);
  }

  Future<T> performPostRequestApi<T>({
    required String apiEndpoint,
    dynamic data,
  }) {
    Future<Response<T>> request() async => dio.post<T>(
          _path(apiEndpoint),
          data: data,
        );

    return _performRequestApi<T>(request);
  }

  Future<T> performPatchRequestApi<T>({
    required String apiEndpoint,
    String? body,
  }) async {
    Future<Response<T>> request() => dio.patch<T>(
          _path(apiEndpoint),
          data: body,
        );

    return _performRequestApi<T>(request);
  }

  Future<T> performPutRequestApi<T>({
    required String apiEndpoint,
  }) {
    Future<Response<T>> request() => dio.put<T>(
          _path(apiEndpoint),
        );

    return _performRequestApi<T>(request);
  }

  Future<T> performGetRequestApi<T>({
    required String apiEndpoint,
  }) async {
    Future<Response<T>> request() async {
      return dio.get<T>(
        _path(apiEndpoint),
      );
    }

    return _performRequestApi(request);
  }

  Future<void> performDownloadRequestApi({
    required String apiEndpoint,
    dynamic savePath,
  }) async {
    Future<Response> request() async {
      return dio.download(
        _path(apiEndpoint),
        savePath,
      );
    }

    return _performRequestApi(request);
  }

  Future<T> _performRequestApi<T>(
    Future<Response<T>> Function() request,
  ) async {
    try {
      final Response<T> response = await request();
      return response.data!;
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectTimeout ||
          e.type == DioErrorType.receiveTimeout ||
          e.type == DioErrorType.sendTimeout) {
        throw const TimeoutException();
      }
      if (e.response?.statusCode == 401) {
        throw const UnauthorisedException();
      } else if (e.response?.statusCode == 404) {
        throw const NotFoundException();
      } else if (e.response?.statusCode == 400) {
        throw const BadRequestException();
      } else if (e.response?.statusCode == 504) {
        throw const TimeoutException();
      }
      throw const ServerException();
    }
  }

  String _path(String endpoint) {
    return '$_baseUrl$endpoint';
  }
}
