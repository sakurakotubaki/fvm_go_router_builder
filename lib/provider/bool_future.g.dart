// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bool_future.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(boolFuture)
const boolFutureProvider = BoolFutureProvider._();

final class BoolFutureProvider
    extends $FunctionalProvider<AsyncValue<bool>, bool, FutureOr<bool>>
    with $FutureModifier<bool>, $FutureProvider<bool> {
  const BoolFutureProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'boolFutureProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$boolFutureHash();

  @$internal
  @override
  $FutureProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<bool> create(Ref ref) {
    return boolFuture(ref);
  }
}

String _$boolFutureHash() => r'd1a3e1ddafd3fb25eb1b587d3f67da514499bb4b';
