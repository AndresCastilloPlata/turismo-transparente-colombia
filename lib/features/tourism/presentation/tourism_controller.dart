import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:turismo_transparente/features/tourism/data/tourism_repository.dart';
import 'package:turismo_transparente/features/tourism/domain/entities/department.dart';

part 'tourism_controller.g.dart';

@riverpod
class TourismController extends _$TourismController {
  @override
  FutureOr<List<Department>> build() async {
    // Acceder al repositorio
    final repository = ref.watch(tourismRepositoryProvider);
    return repository.getDepartments();
  }
}
