// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contracts_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(contractsRepository)
final contractsRepositoryProvider = ContractsRepositoryProvider._();

final class ContractsRepositoryProvider
    extends
        $FunctionalProvider<
          ContractsRepository,
          ContractsRepository,
          ContractsRepository
        >
    with $Provider<ContractsRepository> {
  ContractsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'contractsRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$contractsRepositoryHash();

  @$internal
  @override
  $ProviderElement<ContractsRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ContractsRepository create(Ref ref) {
    return contractsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ContractsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ContractsRepository>(value),
    );
  }
}

String _$contractsRepositoryHash() =>
    r'ce098d50710f2c252d675e16865b27309ecbc563';
