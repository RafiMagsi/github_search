import 'package:dio/dio.dart';

class DioClient {
  final Dio _dio;

  DioClient({
    required String baseUrl,
    required List<Interceptor> interceptors, // Injecting interceptors
  }) : _dio = Dio(BaseOptions(baseUrl: baseUrl)) {
    // Attach interceptors if provided
    _dio.interceptors.addAll(interceptors);
  }

  // GET Request
  Future<Response> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dio.get(_dio.options.baseUrl + endpoint, queryParameters: queryParameters, options: options);
    } on DioException catch (e) {
      throw handleError(e);
    }
  }

  // POST Request
  Future<Response> post(
    String endpoint, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dio.post(_dio.options.baseUrl + endpoint, data: data, queryParameters: queryParameters, options: options);
    } on DioException catch (e) {
      throw handleError(e);
    }
  }

  // PUT Request (for updating resources)
  Future<Response> put(
    String endpoint, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dio.put(_dio.options.baseUrl + endpoint, data: data, queryParameters: queryParameters, options: options);
    } on DioException catch (e) {
      throw handleError(e);
    }
  }

  // DELETE Request
  Future<Response> delete(
    String endpoint, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dio.delete(_dio.options.baseUrl + endpoint, data: data, queryParameters: queryParameters, options: options);
    } on DioException catch (e) {
      throw handleError(e);
    }
  }

  // PATCH Request (for partial updates)
  Future<Response> patch(
    String endpoint, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dio.patch(_dio.options.baseUrl + endpoint, data: data, queryParameters: queryParameters, options: options);
    } on DioException catch (e) {
      throw handleError(e);
    }
  }

  // Error handling for Dio errors
  Exception handleError(DioException error) {
    if (error.response != null) {
      switch (error.response!.statusCode) {
        case 400:
          return Exception('Bad request');
        case 401:
          return Exception('Unauthorized');
        case 404:
          return Exception('Not found');
        case 500:
          return Exception('Internal server error');
        default:
          return Exception('Unknown error: ${error.message}');
      }
    } else {
      return Exception('Network error: ${error.message}');
    }
  }
}
