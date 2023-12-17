// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantMod _$RestaurantModFromJson(Map<String, dynamic> json) {
  return _RestaurantMod.fromJson(json);
}

/// @nodoc
mixin _$RestaurantMod {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'pictureId')
  String get pictureId => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantModCopyWith<RestaurantMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantModCopyWith<$Res> {
  factory $RestaurantModCopyWith(
          RestaurantMod value, $Res Function(RestaurantMod) then) =
      _$RestaurantModCopyWithImpl<$Res, RestaurantMod>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      @JsonKey(name: 'pictureId') String pictureId,
      String city,
      double rating});
}

/// @nodoc
class _$RestaurantModCopyWithImpl<$Res, $Val extends RestaurantMod>
    implements $RestaurantModCopyWith<$Res> {
  _$RestaurantModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? pictureId = null,
    Object? city = null,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pictureId: null == pictureId
          ? _value.pictureId
          : pictureId // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RestaurantModCopyWith<$Res>
    implements $RestaurantModCopyWith<$Res> {
  factory _$$_RestaurantModCopyWith(
          _$_RestaurantMod value, $Res Function(_$_RestaurantMod) then) =
      __$$_RestaurantModCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      @JsonKey(name: 'pictureId') String pictureId,
      String city,
      double rating});
}

/// @nodoc
class __$$_RestaurantModCopyWithImpl<$Res>
    extends _$RestaurantModCopyWithImpl<$Res, _$_RestaurantMod>
    implements _$$_RestaurantModCopyWith<$Res> {
  __$$_RestaurantModCopyWithImpl(
      _$_RestaurantMod _value, $Res Function(_$_RestaurantMod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? pictureId = null,
    Object? city = null,
    Object? rating = null,
  }) {
    return _then(_$_RestaurantMod(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pictureId: null == pictureId
          ? _value.pictureId
          : pictureId // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RestaurantMod implements _RestaurantMod {
  const _$_RestaurantMod(
      {required this.id,
      required this.name,
      required this.description,
      @JsonKey(name: 'pictureId') required this.pictureId,
      required this.city,
      required this.rating});

  factory _$_RestaurantMod.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantModFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  @JsonKey(name: 'pictureId')
  final String pictureId;
  @override
  final String city;
  @override
  final double rating;

  @override
  String toString() {
    return 'RestaurantMod(id: $id, name: $name, description: $description, pictureId: $pictureId, city: $city, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestaurantMod &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pictureId, pictureId) ||
                other.pictureId == pictureId) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, pictureId, city, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantModCopyWith<_$_RestaurantMod> get copyWith =>
      __$$_RestaurantModCopyWithImpl<_$_RestaurantMod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantModToJson(
      this,
    );
  }
}

abstract class _RestaurantMod implements RestaurantMod {
  const factory _RestaurantMod(
      {required final String id,
      required final String name,
      required final String description,
      @JsonKey(name: 'pictureId') required final String pictureId,
      required final String city,
      required final double rating}) = _$_RestaurantMod;

  factory _RestaurantMod.fromJson(Map<String, dynamic> json) =
      _$_RestaurantMod.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(name: 'pictureId')
  String get pictureId;
  @override
  String get city;
  @override
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantModCopyWith<_$_RestaurantMod> get copyWith =>
      throw _privateConstructorUsedError;
}
