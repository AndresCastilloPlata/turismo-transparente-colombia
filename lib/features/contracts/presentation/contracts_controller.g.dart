// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contracts_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ContractsController)
final contractsControllerProvider = ContractsControllerProvider._();

final class ContractsControllerProvider
    extends $AsyncNotifierProvider<ContractsController, List<PublicContract>> {
  ContractsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'contractsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$contractsControllerHash();

  @$internal
  @override
  ContractsController create() => ContractsController();
}

String _$contractsControllerHash() =>
    r'836c71f97e5af5894b4d4752d290c908014d765a';

abstract class _$ContractsController
    extends $AsyncNotifier<List<PublicContract>> {
  FutureOr<List<PublicContract>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<PublicContract>>, List<PublicContract>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<PublicContract>>,
                List<PublicContract>
              >,
              AsyncValue<List<PublicContract>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
