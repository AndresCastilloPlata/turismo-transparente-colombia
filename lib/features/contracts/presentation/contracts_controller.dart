import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:turismo_transparente/features/contracts/data/contracts_repository.dart';
import 'package:turismo_transparente/features/contracts/domain/entities/public_contract.dart';
import 'package:turismo_transparente/features/contracts/presentation/selected_department_controller.dart';

part 'contracts_controller.g.dart';

@riverpod
class ContractsController extends _$ContractsController {
  @override
  FutureOr<List<PublicContract>> build() {
    // Observa el estado del departamento seleccionado
    final selectDepartment = ref.watch(selectedDepartmentControllerProvider);

    // Si no hay nada seleccionado, retorna una lista vacia
    if (selectDepartment == null) return [];

    // Si hay un departamento, pide los contratos al repositorio
    final repository = ref.watch(contractsRepositoryProvider);
    return repository.getContractsByDepartment(selectDepartment.name);
  }
}
