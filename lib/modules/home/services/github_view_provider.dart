// Provider for ApiService that works with User model
import 'package:LyvelyExercise/modules/home/data/git_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../configs/api_endpoints.dart';
import '../../../utils/api_service.dart';
import '../../../utils/dio_client.dart';

part 'github_view_provider.g.dart';

final formatterProvider = Provider<NumberFormat>((Ref) => NumberFormat.compact(locale: "en_US", explicitSign: false));

final indexBottomNavbarProvider = StateProvider<int>((ref) {
  return 0;
});

final gitApiServiceProvider = Provider<ApiService<GitRepository>>((ref) {
  final dioClient = DioClient(
    baseUrl: APIEndPoints.baseUrl,
    interceptors: [], // Add any interceptors
  );
  return ApiService<GitRepository>(dioClient, (json) => GitRepository.fromJson(json));
});

final TextEditingController searchController = TextEditingController();

@riverpod
class SearchControllerNotifier extends _$SearchControllerNotifier {
  SearchControllerNotifier();

  @override
  String build(TextEditingController messageController) {
    return '';
  }
}
