import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:turismo_transparente/core/network/dio_client.dart';
import 'package:turismo_transparente/features/contracts/domain/entities/public_contract.dart';

part 'contracts_repository.g.dart';

class ContractsRepository {
  final Dio _dio;

  ContractsRepository(this._dio);

  Future<List<PublicContract>> getContractsByDepartment(
    String departmentName,
  ) async {
    try {
      final response = await _dio.get(
        'https://www.datos.gov.co/resource/jbjy-vk9h.json',
        queryParameters: {
          'departamento': departmentName.toUpperCase(),
          '\$limit': 15,
        },
      );

      final data = response.data as List;

      return data
          .map(
            (json) => PublicContract(
              id: json['id_contrato'] ?? 'Sin ID',
              entityName: json['nombre_entidad'] ?? 'Entidad Desconocida',
              description:
                  json['detalle_del_objeto_a_contratar'] ?? 'Sin Descripción',
              amount:
                  double.tryParse(
                    json['valor_del_contrato']?.toString() ?? '0',
                  ) ??
                  0.0,
              statu: json['estado_contrato'] ?? 'Desconocido',
            ),
          )
          .toList();
    } catch (e) {
      throw Exception('Error al obtener contratos: $e');
    }
  }
}

@riverpod
ContractsRepository contractsRepository(Ref ref) {
  return ContractsRepository(ref.watch(dioProvider));
}
