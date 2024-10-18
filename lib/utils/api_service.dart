import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio/src/cancel_token.dart';
import 'package:dio/src/response.dart';

import '../modules/home/data/git_model.dart';
import 'dio_client.dart';

class ApiService<T> {
  final DioClient _dioClient;
  final T Function(Map<String, dynamic>) fromJson; // Generic factory for creating models from JSON

  ApiService(this._dioClient, this.fromJson);

  // Generic GET request to fetch a list of resources
  Future<SearchResult> fetchAll(
    String endpoint, {
    int? page,
    int? limit,
    CancelToken? cancelToken,
    String? query,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final response = await _dioClient.get(endpoint,
          queryParameters: {
            'q': '$query language:dart', // Search for repositories matching the query in Dart
            'sort': 'stars',
            'order': 'desc',
            'page': page,
            'per_page': limit,
          },
          options: Options(headers: headers),
          cancelToken: cancelToken);
      final Map<String, dynamic> data = response.data;
      return SearchResult.fromJson(data);
    } catch (e) {
      throw Exception('Failed to fetch data: $e');
    }
  }

  // Generic GET request to fetch a single resource by ID
  Future<T> fetchById(String endpoint, int id) async {
    try {
      final response = await _dioClient.get('$endpoint/$id');
      return fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to fetch data: $e');
    }
  }

  // Generic POST request to create a new resource
  Future<Response> create(String endpoint, {required Map<String, dynamic> data}) async {
    try {
      final response = await _dioClient.post(endpoint, data: data);
      return response;
    } catch (e) {
      throw Exception('Failed to create data: $e');
    }
  }

  // Generic PUT request to update an existing resource
  Future<T> update(String endpoint, {Map<String, dynamic>? data, Map<String, String>? headers}) async {
    try {
      final response = await _dioClient.put(
        '$endpoint',
        data: data,
        options: Options(headers: headers),
      );
      return response.data;
    } catch (e) {
      throw Exception('Failed to update data: $e');
    }
  }

  // Generic DELETE request to delete a resource by ID
  Future<Response> delete(String endpoint, String id) async {
    try {
      final response = await _dioClient.delete('$endpoint/$id');
      return response;
    } catch (e) {
      throw Exception('Failed to delete data: $e');
    }
  }

  // Generic PATCH request to partially update an existing resource
  Future<T> patch(String endpoint, String id, Map<String, dynamic> updates) async {
    try {
      final response = await _dioClient.patch('$endpoint/$id', data: updates);
      return fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to update data: $e');
    }
  }
}
