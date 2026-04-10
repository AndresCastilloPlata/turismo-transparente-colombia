// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_department_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SelectedDepartmentController)
final selectedDepartmentControllerProvider =
    SelectedDepartmentControllerProvider._();

final class SelectedDepartmentControllerProvider
    extends $NotifierProvider<SelectedDepartmentController, Department?> {
  SelectedDepartmentControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedDepartmentControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedDepartmentControllerHash();

  @$internal
  @override
  SelectedDepartmentController create() => SelectedDepartmentController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Department? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Department?>(value),
    );
  }
}

String _$selectedDepartmentControllerHash() =>
    r'de72cb675150b22c470eae9598596e9f3ba56fb0';

abstract class _$SelectedDepartmentController extends $Notifier<Department?> {
  Department? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Department?, Department?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Department?, Department?>,
              Department?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
