// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidiOptionalParameter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SwidiOptionalParameterTearOff {
  const _$SwidiOptionalParameterTearOff();

// ignore: unused_element
  _$SwidiOptionalParameterCtor call({@required SwidiDeclaration declaration}) {
    return _$SwidiOptionalParameterCtor(
      declaration: declaration,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SwidiOptionalParameter = _$SwidiOptionalParameterTearOff();

/// @nodoc
mixin _$SwidiOptionalParameter {
  SwidiDeclaration get declaration;

  @JsonKey(ignore: true)
  $SwidiOptionalParameterCopyWith<SwidiOptionalParameter> get copyWith;
}

/// @nodoc
abstract class $SwidiOptionalParameterCopyWith<$Res> {
  factory $SwidiOptionalParameterCopyWith(SwidiOptionalParameter value,
          $Res Function(SwidiOptionalParameter) then) =
      _$SwidiOptionalParameterCopyWithImpl<$Res>;
  $Res call({SwidiDeclaration declaration});

  $SwidiDeclarationCopyWith<$Res> get declaration;
}

/// @nodoc
class _$SwidiOptionalParameterCopyWithImpl<$Res>
    implements $SwidiOptionalParameterCopyWith<$Res> {
  _$SwidiOptionalParameterCopyWithImpl(this._value, this._then);

  final SwidiOptionalParameter _value;
  // ignore: unused_field
  final $Res Function(SwidiOptionalParameter) _then;

  @override
  $Res call({
    Object declaration = freezed,
  }) {
    return _then(_value.copyWith(
      declaration: declaration == freezed
          ? _value.declaration
          : declaration as SwidiDeclaration,
    ));
  }

  @override
  $SwidiDeclarationCopyWith<$Res> get declaration {
    if (_value.declaration == null) {
      return null;
    }
    return $SwidiDeclarationCopyWith<$Res>(_value.declaration, (value) {
      return _then(_value.copyWith(declaration: value));
    });
  }
}

/// @nodoc
abstract class _$$SwidiOptionalParameterCtorCopyWith<$Res>
    implements $SwidiOptionalParameterCopyWith<$Res> {
  factory _$$SwidiOptionalParameterCtorCopyWith(
          _$SwidiOptionalParameterCtor value,
          $Res Function(_$SwidiOptionalParameterCtor) then) =
      __$$SwidiOptionalParameterCtorCopyWithImpl<$Res>;
  @override
  $Res call({SwidiDeclaration declaration});

  @override
  $SwidiDeclarationCopyWith<$Res> get declaration;
}

/// @nodoc
class __$$SwidiOptionalParameterCtorCopyWithImpl<$Res>
    extends _$SwidiOptionalParameterCopyWithImpl<$Res>
    implements _$$SwidiOptionalParameterCtorCopyWith<$Res> {
  __$$SwidiOptionalParameterCtorCopyWithImpl(
      _$SwidiOptionalParameterCtor _value,
      $Res Function(_$SwidiOptionalParameterCtor) _then)
      : super(_value, (v) => _then(v as _$SwidiOptionalParameterCtor));

  @override
  _$SwidiOptionalParameterCtor get _value =>
      super._value as _$SwidiOptionalParameterCtor;

  @override
  $Res call({
    Object declaration = freezed,
  }) {
    return _then(_$SwidiOptionalParameterCtor(
      declaration: declaration == freezed
          ? _value.declaration
          : declaration as SwidiDeclaration,
    ));
  }
}

/// @nodoc
class _$_$SwidiOptionalParameterCtor implements _$SwidiOptionalParameterCtor {
  const _$_$SwidiOptionalParameterCtor({@required this.declaration})
      : assert(declaration != null);

  @override
  final SwidiDeclaration declaration;

  @override
  String toString() {
    return 'SwidiOptionalParameter(declaration: $declaration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidiOptionalParameterCtor &&
            (identical(other.declaration, declaration) ||
                const DeepCollectionEquality()
                    .equals(other.declaration, declaration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(declaration);

  @JsonKey(ignore: true)
  @override
  _$$SwidiOptionalParameterCtorCopyWith<_$SwidiOptionalParameterCtor>
      get copyWith => __$$SwidiOptionalParameterCtorCopyWithImpl<
          _$SwidiOptionalParameterCtor>(this, _$identity);
}

abstract class _$SwidiOptionalParameterCtor implements SwidiOptionalParameter {
  const factory _$SwidiOptionalParameterCtor(
          {@required SwidiDeclaration declaration}) =
      _$_$SwidiOptionalParameterCtor;

  @override
  SwidiDeclaration get declaration;
  @override
  @JsonKey(ignore: true)
  _$$SwidiOptionalParameterCtorCopyWith<_$SwidiOptionalParameterCtor>
      get copyWith;
}
