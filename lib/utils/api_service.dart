import 'package:dio/src/response.dart';

import 'dio_client.dart';

class ApiService<T> {
  final DioClient _dioClient;
  final T Function(Map<String, dynamic>) fromJson; // Generic factory for creating models from JSON

  ApiService(this._dioClient, this.fromJson);

  // Generic GET request to fetch a list of resources
  Future<List<T>> fetchAll(String endpoint) async {
    try {
      final response = await _dioClient.get(endpoint);
      final List<dynamic> data = response.data;
      return data.map((json) => fromJson(json)).toList();
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
  Future<T> update(String endpoint, String id, {required Map<String, dynamic> data}) async {
    try {
      final response = await _dioClient.put('$endpoint/$id', data: data);
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
