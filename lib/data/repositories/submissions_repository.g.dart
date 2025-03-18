// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submissions_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$submissionsHash() => r'18ca2d0c200f0aff851beb3ed339e8811a6efc7d';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [submissions].
@ProviderFor(submissions)
const submissionsProvider = SubmissionsFamily();

/// See also [submissions].
class SubmissionsFamily extends Family<AsyncValue<List<Submission>>> {
  /// See also [submissions].
  const SubmissionsFamily();

  /// See also [submissions].
  SubmissionsProvider call({bool? done}) {
    return SubmissionsProvider(done: done);
  }

  @override
  SubmissionsProvider getProviderOverride(
    covariant SubmissionsProvider provider,
  ) {
    return call(done: provider.done);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'submissionsProvider';
}

/// See also [submissions].
class SubmissionsProvider extends AutoDisposeStreamProvider<List<Submission>> {
  /// See also [submissions].
  SubmissionsProvider({bool? done})
    : this._internal(
        (ref) => submissions(ref as SubmissionsRef, done: done),
        from: submissionsProvider,
        name: r'submissionsProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$submissionsHash,
        dependencies: SubmissionsFamily._dependencies,
        allTransitiveDependencies: SubmissionsFamily._allTransitiveDependencies,
        done: done,
      );

  SubmissionsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.done,
  }) : super.internal();

  final bool? done;

  @override
  Override overrideWith(
    Stream<List<Submission>> Function(SubmissionsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SubmissionsProvider._internal(
        (ref) => create(ref as SubmissionsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        done: done,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<List<Submission>> createElement() {
    return _SubmissionsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SubmissionsProvider && other.done == done;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, done.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SubmissionsRef on AutoDisposeStreamProviderRef<List<Submission>> {
  /// The parameter `done` of this provider.
  bool? get done;
}

class _SubmissionsProviderElement
    extends AutoDisposeStreamProviderElement<List<Submission>>
    with SubmissionsRef {
  _SubmissionsProviderElement(super.provider);

  @override
  bool? get done => (origin as SubmissionsProvider).done;
}

String _$submissionsCudRepositoryHash() =>
    r'4b681cd1639be51b4a263d813b5e78182e85486c';

/// See also [SubmissionsCudRepository].
@ProviderFor(SubmissionsCudRepository)
final submissionsCudRepositoryProvider =
    AutoDisposeNotifierProvider<SubmissionsCudRepository, void>.internal(
      SubmissionsCudRepository.new,
      name: r'submissionsCudRepositoryProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$submissionsCudRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$SubmissionsCudRepository = AutoDisposeNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
