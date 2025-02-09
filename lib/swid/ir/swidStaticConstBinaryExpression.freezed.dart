// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidStaticConstBinaryExpression.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SwidStaticConstBinaryExpression _$SwidStaticConstBinaryExpressionFromJson(
    Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$SwidStaticConstBinaryExpressionTearOff {
  const _$SwidStaticConstBinaryExpressionTearOff();

// ignore: unused_element
  _$Data call(
      {@required String operator,
      @required SwidStaticConst leftOperand,
      @required SwidStaticConst rightOperand}) {
    return _$Data(
      operator: operator,
      leftOperand: leftOperand,
      rightOperand: rightOperand,
    );
  }

// ignore: unused_element
  SwidStaticConstBinaryExpression fromJson(Map<String, Object> json) {
    return SwidStaticConstBinaryExpression.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SwidStaticConstBinaryExpression =
    _$SwidStaticConstBinaryExpressionTearOff();

/// @nodoc
mixin _$SwidStaticConstBinaryExpression {
  String get operator;
  SwidStaticConst get leftOperand;
  SwidStaticConst get rightOperand;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SwidStaticConstBinaryExpressionCopyWith<SwidStaticConstBinaryExpression>
      get copyWith;
}

/// @nodoc
abstract class $SwidStaticConstBinaryExpressionCopyWith<$Res> {
  factory $SwidStaticConstBinaryExpressionCopyWith(
          SwidStaticConstBinaryExpression value,
          $Res Function(SwidStaticConstBinaryExpression) then) =
      _$SwidStaticConstBinaryExpressionCopyWithImpl<$Res>;
  $Res call(
      {String operator,
      SwidStaticConst leftOperand,
      SwidStaticConst rightOperand});

  $SwidStaticConstCopyWith<$Res> get leftOperand;
  $SwidStaticConstCopyWith<$Res> get rightOperand;
}

/// @nodoc
class _$SwidStaticConstBinaryExpressionCopyWithImpl<$Res>
    implements $SwidStaticConstBinaryExpressionCopyWith<$Res> {
  _$SwidStaticConstBinaryExpressionCopyWithImpl(this._value, this._then);

  final SwidStaticConstBinaryExpression _value;
  // ignore: unused_field
  final $Res Function(SwidStaticConstBinaryExpression) _then;

  @override
  $Res call({
    Object operator = freezed,
    Object leftOperand = freezed,
    Object rightOperand = freezed,
  }) {
    return _then(_value.copyWith(
      operator: operator == freezed ? _value.operator : operator as String,
      leftOperand: leftOperand == freezed
          ? _value.leftOperand
          : leftOperand as SwidStaticConst,
      rightOperand: rightOperand == freezed
          ? _value.rightOperand
          : rightOperand as SwidStaticConst,
    ));
  }

  @override
  $SwidStaticConstCopyWith<$Res> get leftOperand {
    if (_value.leftOperand == null) {
      return null;
    }
    return $SwidStaticConstCopyWith<$Res>(_value.leftOperand, (value) {
      return _then(_value.copyWith(leftOperand: value));
    });
  }

  @override
  $SwidStaticConstCopyWith<$Res> get rightOperand {
    if (_value.rightOperand == null) {
      return null;
    }
    return $SwidStaticConstCopyWith<$Res>(_value.rightOperand, (value) {
      return _then(_value.copyWith(rightOperand: value));
    });
  }
}

/// @nodoc
abstract class _$$DataCopyWith<$Res>
    implements $SwidStaticConstBinaryExpressionCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String operator,
      SwidStaticConst leftOperand,
      SwidStaticConst rightOperand});

  @override
  $SwidStaticConstCopyWith<$Res> get leftOperand;
  @override
  $SwidStaticConstCopyWith<$Res> get rightOperand;
}

/// @nodoc
class __$$DataCopyWithImpl<$Res>
    extends _$SwidStaticConstBinaryExpressionCopyWithImpl<$Res>
    implements _$$DataCopyWith<$Res> {
  __$$DataCopyWithImpl(_$Data _value, $Res Function(_$Data) _then)
      : super(_value, (v) => _then(v as _$Data));

  @override
  _$Data get _value => super._value as _$Data;

  @override
  $Res call({
    Object operator = freezed,
    Object leftOperand = freezed,
    Object rightOperand = freezed,
  }) {
    return _then(_$Data(
      operator: operator == freezed ? _value.operator : operator as String,
      leftOperand: leftOperand == freezed
          ? _value.leftOperand
          : leftOperand as SwidStaticConst,
      rightOperand: rightOperand == freezed
          ? _value.rightOperand
          : rightOperand as SwidStaticConst,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$Data implements _$Data {
  const _$_$Data(
      {@required this.operator,
      @required this.leftOperand,
      @required this.rightOperand})
      : assert(operator != null),
        assert(leftOperand != null),
        assert(rightOperand != null);

  factory _$_$Data.fromJson(Map<String, dynamic> json) =>
      _$_$_$DataFromJson(json);

  @override
  final String operator;
  @override
  final SwidStaticConst leftOperand;
  @override
  final SwidStaticConst rightOperand;

  @override
  String toString() {
    return 'SwidStaticConstBinaryExpression(operator: $operator, leftOperand: $leftOperand, rightOperand: $rightOperand)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$Data &&
            (identical(other.operator, operator) ||
                const DeepCollectionEquality()
                    .equals(other.operator, operator)) &&
            (identical(other.leftOperand, leftOperand) ||
                const DeepCollectionEquality()
                    .equals(other.leftOperand, leftOperand)) &&
            (identical(other.rightOperand, rightOperand) ||
                const DeepCollectionEquality()
                    .equals(other.rightOperand, rightOperand)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(operator) ^
      const DeepCollectionEquality().hash(leftOperand) ^
      const DeepCollectionEquality().hash(rightOperand);

  @JsonKey(ignore: true)
  @override
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$DataToJson(this);
  }
}

abstract class _$Data implements SwidStaticConstBinaryExpression {
  const factory _$Data(
      {@required String operator,
      @required SwidStaticConst leftOperand,
      @required SwidStaticConst rightOperand}) = _$_$Data;

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  String get operator;
  @override
  SwidStaticConst get leftOperand;
  @override
  SwidStaticConst get rightOperand;
  @override
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith;
}
