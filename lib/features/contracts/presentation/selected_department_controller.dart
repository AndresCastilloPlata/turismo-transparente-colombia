import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:turismo_transparente/features/tourism/domain/entities/department.dart';

part 'selected_department_controller.g.dart';

// Este controlador guarda el departamento seleccionado.
// Inicialmente es null por que no hay ninguno seleccionado al abrir la app.
@riverpod
class SelectedDepartmentController extends _$SelectedDepartmentController {
  @override
  Department? build() {
    return null;
  }

  // Metodo para actualizar el estado cuando el usuario toca una tarjeta
  void selectDepartment(Department department) {
    state = department;
  }
}
