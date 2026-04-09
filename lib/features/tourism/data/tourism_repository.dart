import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:turismo_transparente/core/network/dio_client.dart';
import 'package:turismo_transparente/features/tourism/domain/entities/department.dart';

part 'tourism_repository.g.dart';

class TourismRepository {
  final Dio _dio;

  TourismRepository(this._dio);

  Future<List<Department>> getDepartments() async {
    try {
      final response = await _dio.get('/Department');
      final data = response.data as List;

      // Convierte el JSON en la Entidd pura de Dart
      return data
          .map(
            (json) => Department(
              id: json['id'],
              name: json['name'],
              description: json['description'] ?? 'Sin descripción',
              population: json['population'] ?? 0,
            ),
          )
          .toList();
    } catch (e) {
      throw Exception('Error al obtener los departamentos: $e');
    }
  }
}

// Inyectar el repositorio a Riverpod
@riverpod
TourismRepository tourismRepository(Ref ref) {
  return TourismRepository(ref.watch(dioProvider));
}
