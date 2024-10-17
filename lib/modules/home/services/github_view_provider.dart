// Provider for ApiService that works with User model
import 'package:LyvelyExercise/modules/home/data/git_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../configs/api_endpoints.dart';
import '../../../utils/api_service.dart';
import '../../../utils/dio_client.dart';

final gitApiServiceProvider = Provider<ApiService<GitRepository>>((ref) {
  final dioClient = DioClient(
    baseUrl: APIEndPoints.baseUrl,
    interceptors: [], // Add any interceptors
  );
  return ApiService<GitRepository>(dioClient, (json) => GitRepository.fromJson(json));
});
