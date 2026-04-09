// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tourism_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(tourismRepository)
final tourismRepositoryProvider = TourismRepositoryProvider._();

final class TourismRepositoryProvider
    extends
        $FunctionalProvider<
          TourismRepository,
          TourismRepository,
          TourismRepository
        >
    with $Provider<TourismRepository> {
  TourismRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tourismRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tourismRepositoryHash();

  @$internal
  @override
  $ProviderElement<TourismRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TourismRepository create(Ref ref) {
    return tourismRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TourismRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TourismRepository>(value),
    );
  }
}

String _$tourismRepositoryHash() => r'3eab3a081466e3a8d3edcca5d8119af25e79c2c7';
