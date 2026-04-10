// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tourism_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TourismController)
final tourismControllerProvider = TourismControllerProvider._();

final class TourismControllerProvider
    extends $AsyncNotifierProvider<TourismController, List<Department>> {
  TourismControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tourismControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tourismControllerHash();

  @$internal
  @override
  TourismController create() => TourismController();
}

String _$tourismControllerHash() => r'b14e2d9bed4c4d167164aa177664fff83c408947';

abstract class _$TourismController extends $AsyncNotifier<List<Department>> {
  FutureOr<List<Department>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<Department>>, List<Department>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Department>>, List<Department>>,
              AsyncValue<List<Department>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
