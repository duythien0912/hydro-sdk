// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'packageManifestEntry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PackageManifestEntry _$PackageManifestEntryFromJson(Map<String, dynamic> json) {
  return _$PackageManifestEntryCtor.fromJson(json);
}

/// @nodoc
class _$PackageManifestEntryTearOff {
  const _$PackageManifestEntryTearOff();

// ignore: unused_element
  _$PackageManifestEntryCtor call(
      {@required String path, @required String sha256}) {
    return _$PackageManifestEntryCtor(
      path: path,
      sha256: sha256,
    );
  }

// ignore: unused_element
  PackageManifestEntry fromJson(Map<String, Object> json) {
    return PackageManifestEntry.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PackageManifestEntry = _$PackageManifestEntryTearOff();

/// @nodoc
mixin _$PackageManifestEntry {
  String get path;
  String get sha256;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PackageManifestEntryCopyWith<PackageManifestEntry> get copyWith;
}

/// @nodoc
abstract class $PackageManifestEntryCopyWith<$Res> {
  factory $PackageManifestEntryCopyWith(PackageManifestEntry value,
          $Res Function(PackageManifestEntry) then) =
      _$PackageManifestEntryCopyWithImpl<$Res>;
  $Res call({String path, String sha256});
}

/// @nodoc
class _$PackageManifestEntryCopyWithImpl<$Res>
    implements $PackageManifestEntryCopyWith<$Res> {
  _$PackageManifestEntryCopyWithImpl(this._value, this._then);

  final PackageManifestEntry _value;
  // ignore: unused_field
  final $Res Function(PackageManifestEntry) _then;

  @override
  $Res call({
    Object path = freezed,
    Object sha256 = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed ? _value.path : path as String,
      sha256: sha256 == freezed ? _value.sha256 : sha256 as String,
    ));
  }
}

/// @nodoc
abstract class _$$PackageManifestEntryCtorCopyWith<$Res>
    implements $PackageManifestEntryCopyWith<$Res> {
  factory _$$PackageManifestEntryCtorCopyWith(_$PackageManifestEntryCtor value,
          $Res Function(_$PackageManifestEntryCtor) then) =
      __$$PackageManifestEntryCtorCopyWithImpl<$Res>;
  @override
  $Res call({String path, String sha256});
}

/// @nodoc
class __$$PackageManifestEntryCtorCopyWithImpl<$Res>
    extends _$PackageManifestEntryCopyWithImpl<$Res>
    implements _$$PackageManifestEntryCtorCopyWith<$Res> {
  __$$PackageManifestEntryCtorCopyWithImpl(_$PackageManifestEntryCtor _value,
      $Res Function(_$PackageManifestEntryCtor) _then)
      : super(_value, (v) => _then(v as _$PackageManifestEntryCtor));

  @override
  _$PackageManifestEntryCtor get _value =>
      super._value as _$PackageManifestEntryCtor;

  @override
  $Res call({
    Object path = freezed,
    Object sha256 = freezed,
  }) {
    return _then(_$PackageManifestEntryCtor(
      path: path == freezed ? _value.path : path as String,
      sha256: sha256 == freezed ? _value.sha256 : sha256 as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$PackageManifestEntryCtor implements _$PackageManifestEntryCtor {
  const _$_$PackageManifestEntryCtor(
      {@required this.path, @required this.sha256})
      : assert(path != null),
        assert(sha256 != null);

  factory _$_$PackageManifestEntryCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$PackageManifestEntryCtorFromJson(json);

  @override
  final String path;
  @override
  final String sha256;

  @override
  String toString() {
    return 'PackageManifestEntry(path: $path, sha256: $sha256)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$PackageManifestEntryCtor &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.sha256, sha256) ||
                const DeepCollectionEquality().equals(other.sha256, sha256)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(sha256);

  @JsonKey(ignore: true)
  @override
  _$$PackageManifestEntryCtorCopyWith<_$PackageManifestEntryCtor>
      get copyWith =>
          __$$PackageManifestEntryCtorCopyWithImpl<_$PackageManifestEntryCtor>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$PackageManifestEntryCtorToJson(this);
  }
}

abstract class _$PackageManifestEntryCtor implements PackageManifestEntry {
  const factory _$PackageManifestEntryCtor(
      {@required String path,
      @required String sha256}) = _$_$PackageManifestEntryCtor;

  factory _$PackageManifestEntryCtor.fromJson(Map<String, dynamic> json) =
      _$_$PackageManifestEntryCtor.fromJson;

  @override
  String get path;
  @override
  String get sha256;
  @override
  @JsonKey(ignore: true)
  _$$PackageManifestEntryCtorCopyWith<_$PackageManifestEntryCtor> get copyWith;
}
