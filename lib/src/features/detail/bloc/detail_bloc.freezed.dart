// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(String? id, String? name, String? review)
        addReview,
    required TResult Function(RestaurantMod data) loadFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? started,
    TResult? Function(String? id, String? name, String? review)? addReview,
    TResult? Function(RestaurantMod data)? loadFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String? id, String? name, String? review)? addReview,
    TResult Function(RestaurantMod data)? loadFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddReview value) addReview,
    required TResult Function(_LoadFavorite value) loadFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddReview value)? addReview,
    TResult? Function(_LoadFavorite value)? loadFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddReview value)? addReview,
    TResult Function(_LoadFavorite value)? loadFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailEventCopyWith<$Res> {
  factory $DetailEventCopyWith(
          DetailEvent value, $Res Function(DetailEvent) then) =
      _$DetailEventCopyWithImpl<$Res, DetailEvent>;
}

/// @nodoc
class _$DetailEventCopyWithImpl<$Res, $Val extends DetailEvent>
    implements $DetailEventCopyWith<$Res> {
  _$DetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_Started(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'DetailEvent.started(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(String? id, String? name, String? review)
        addReview,
    required TResult Function(RestaurantMod data) loadFavorite,
  }) {
    return started(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? started,
    TResult? Function(String? id, String? name, String? review)? addReview,
    TResult? Function(RestaurantMod data)? loadFavorite,
  }) {
    return started?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String? id, String? name, String? review)? addReview,
    TResult Function(RestaurantMod data)? loadFavorite,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddReview value) addReview,
    required TResult Function(_LoadFavorite value) loadFavorite,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddReview value)? addReview,
    TResult? Function(_LoadFavorite value)? loadFavorite,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddReview value)? addReview,
    TResult Function(_LoadFavorite value)? loadFavorite,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DetailEvent {
  const factory _Started({required final String id}) = _$_Started;

  String get id;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddReviewCopyWith<$Res> {
  factory _$$_AddReviewCopyWith(
          _$_AddReview value, $Res Function(_$_AddReview) then) =
      __$$_AddReviewCopyWithImpl<$Res>;
  @useResult
  $Res call({String? id, String? name, String? review});
}

/// @nodoc
class __$$_AddReviewCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$_AddReview>
    implements _$$_AddReviewCopyWith<$Res> {
  __$$_AddReviewCopyWithImpl(
      _$_AddReview _value, $Res Function(_$_AddReview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? review = freezed,
  }) {
    return _then(_$_AddReview(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AddReview implements _AddReview {
  const _$_AddReview({this.id, this.name, this.review});

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? review;

  @override
  String toString() {
    return 'DetailEvent.addReview(id: $id, name: $name, review: $review)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddReview &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.review, review) || other.review == review));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, review);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddReviewCopyWith<_$_AddReview> get copyWith =>
      __$$_AddReviewCopyWithImpl<_$_AddReview>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(String? id, String? name, String? review)
        addReview,
    required TResult Function(RestaurantMod data) loadFavorite,
  }) {
    return addReview(id, name, review);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? started,
    TResult? Function(String? id, String? name, String? review)? addReview,
    TResult? Function(RestaurantMod data)? loadFavorite,
  }) {
    return addReview?.call(id, name, review);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String? id, String? name, String? review)? addReview,
    TResult Function(RestaurantMod data)? loadFavorite,
    required TResult orElse(),
  }) {
    if (addReview != null) {
      return addReview(id, name, review);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddReview value) addReview,
    required TResult Function(_LoadFavorite value) loadFavorite,
  }) {
    return addReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddReview value)? addReview,
    TResult? Function(_LoadFavorite value)? loadFavorite,
  }) {
    return addReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddReview value)? addReview,
    TResult Function(_LoadFavorite value)? loadFavorite,
    required TResult orElse(),
  }) {
    if (addReview != null) {
      return addReview(this);
    }
    return orElse();
  }
}

abstract class _AddReview implements DetailEvent {
  const factory _AddReview(
      {final String? id,
      final String? name,
      final String? review}) = _$_AddReview;

  String? get id;
  String? get name;
  String? get review;
  @JsonKey(ignore: true)
  _$$_AddReviewCopyWith<_$_AddReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFavoriteCopyWith<$Res> {
  factory _$$_LoadFavoriteCopyWith(
          _$_LoadFavorite value, $Res Function(_$_LoadFavorite) then) =
      __$$_LoadFavoriteCopyWithImpl<$Res>;
  @useResult
  $Res call({RestaurantMod data});

  $RestaurantModCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadFavoriteCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$_LoadFavorite>
    implements _$$_LoadFavoriteCopyWith<$Res> {
  __$$_LoadFavoriteCopyWithImpl(
      _$_LoadFavorite _value, $Res Function(_$_LoadFavorite) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_LoadFavorite(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RestaurantMod,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RestaurantModCopyWith<$Res> get data {
    return $RestaurantModCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_LoadFavorite implements _LoadFavorite {
  const _$_LoadFavorite({required this.data});

  @override
  final RestaurantMod data;

  @override
  String toString() {
    return 'DetailEvent.loadFavorite(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFavorite &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFavoriteCopyWith<_$_LoadFavorite> get copyWith =>
      __$$_LoadFavoriteCopyWithImpl<_$_LoadFavorite>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(String? id, String? name, String? review)
        addReview,
    required TResult Function(RestaurantMod data) loadFavorite,
  }) {
    return loadFavorite(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? started,
    TResult? Function(String? id, String? name, String? review)? addReview,
    TResult? Function(RestaurantMod data)? loadFavorite,
  }) {
    return loadFavorite?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String? id, String? name, String? review)? addReview,
    TResult Function(RestaurantMod data)? loadFavorite,
    required TResult orElse(),
  }) {
    if (loadFavorite != null) {
      return loadFavorite(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddReview value) addReview,
    required TResult Function(_LoadFavorite value) loadFavorite,
  }) {
    return loadFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddReview value)? addReview,
    TResult? Function(_LoadFavorite value)? loadFavorite,
  }) {
    return loadFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddReview value)? addReview,
    TResult Function(_LoadFavorite value)? loadFavorite,
    required TResult orElse(),
  }) {
    if (loadFavorite != null) {
      return loadFavorite(this);
    }
    return orElse();
  }
}

abstract class _LoadFavorite implements DetailEvent {
  const factory _LoadFavorite({required final RestaurantMod data}) =
      _$_LoadFavorite;

  RestaurantMod get data;
  @JsonKey(ignore: true)
  _$$_LoadFavoriteCopyWith<_$_LoadFavorite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RestaurantDetailMod data) loaded,
    required TResult Function(RestaurantMod data) loadedFavorite,
    required TResult Function(List<CustomerReview> data) loadedReview,
    required TResult Function(NetworkExceptions error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RestaurantDetailMod data)? loaded,
    TResult? Function(RestaurantMod data)? loadedFavorite,
    TResult? Function(List<CustomerReview> data)? loadedReview,
    TResult? Function(NetworkExceptions error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RestaurantDetailMod data)? loaded,
    TResult Function(RestaurantMod data)? loadedFavorite,
    TResult Function(List<CustomerReview> data)? loadedReview,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedFavorite value) loadedFavorite,
    required TResult Function(_LoadedReview value) loadedReview,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedFavorite value)? loadedFavorite,
    TResult? Function(_LoadedReview value)? loadedReview,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedFavorite value)? loadedFavorite,
    TResult Function(_LoadedReview value)? loadedReview,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res, DetailState>;
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res, $Val extends DetailState>
    implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'DetailState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RestaurantDetailMod data) loaded,
    required TResult Function(RestaurantMod data) loadedFavorite,
    required TResult Function(List<CustomerReview> data) loadedReview,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RestaurantDetailMod data)? loaded,
    TResult? Function(RestaurantMod data)? loadedFavorite,
    TResult? Function(List<CustomerReview> data)? loadedReview,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RestaurantDetailMod data)? loaded,
    TResult Function(RestaurantMod data)? loadedFavorite,
    TResult Function(List<CustomerReview> data)? loadedReview,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedFavorite value) loadedFavorite,
    required TResult Function(_LoadedReview value) loadedReview,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedFavorite value)? loadedFavorite,
    TResult? Function(_LoadedReview value)? loadedReview,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedFavorite value)? loadedFavorite,
    TResult Function(_LoadedReview value)? loadedReview,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DetailState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'DetailState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RestaurantDetailMod data) loaded,
    required TResult Function(RestaurantMod data) loadedFavorite,
    required TResult Function(List<CustomerReview> data) loadedReview,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RestaurantDetailMod data)? loaded,
    TResult? Function(RestaurantMod data)? loadedFavorite,
    TResult? Function(List<CustomerReview> data)? loadedReview,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RestaurantDetailMod data)? loaded,
    TResult Function(RestaurantMod data)? loadedFavorite,
    TResult Function(List<CustomerReview> data)? loadedReview,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedFavorite value) loadedFavorite,
    required TResult Function(_LoadedReview value) loadedReview,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedFavorite value)? loadedFavorite,
    TResult? Function(_LoadedReview value)? loadedReview,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedFavorite value)? loadedFavorite,
    TResult Function(_LoadedReview value)? loadedReview,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DetailState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({RestaurantDetailMod data});

  $RestaurantDetailModCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Loaded(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RestaurantDetailMod,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RestaurantDetailModCopyWith<$Res> get data {
    return $RestaurantDetailModCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.data);

  @override
  final RestaurantDetailMod data;

  @override
  String toString() {
    return 'DetailState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RestaurantDetailMod data) loaded,
    required TResult Function(RestaurantMod data) loadedFavorite,
    required TResult Function(List<CustomerReview> data) loadedReview,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RestaurantDetailMod data)? loaded,
    TResult? Function(RestaurantMod data)? loadedFavorite,
    TResult? Function(List<CustomerReview> data)? loadedReview,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RestaurantDetailMod data)? loaded,
    TResult Function(RestaurantMod data)? loadedFavorite,
    TResult Function(List<CustomerReview> data)? loadedReview,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedFavorite value) loadedFavorite,
    required TResult Function(_LoadedReview value) loadedReview,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedFavorite value)? loadedFavorite,
    TResult? Function(_LoadedReview value)? loadedReview,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedFavorite value)? loadedFavorite,
    TResult Function(_LoadedReview value)? loadedReview,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements DetailState {
  const factory _Loaded(final RestaurantDetailMod data) = _$_Loaded;

  RestaurantDetailMod get data;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedFavoriteCopyWith<$Res> {
  factory _$$_LoadedFavoriteCopyWith(
          _$_LoadedFavorite value, $Res Function(_$_LoadedFavorite) then) =
      __$$_LoadedFavoriteCopyWithImpl<$Res>;
  @useResult
  $Res call({RestaurantMod data});

  $RestaurantModCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadedFavoriteCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$_LoadedFavorite>
    implements _$$_LoadedFavoriteCopyWith<$Res> {
  __$$_LoadedFavoriteCopyWithImpl(
      _$_LoadedFavorite _value, $Res Function(_$_LoadedFavorite) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_LoadedFavorite(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RestaurantMod,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RestaurantModCopyWith<$Res> get data {
    return $RestaurantModCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_LoadedFavorite implements _LoadedFavorite {
  const _$_LoadedFavorite(this.data);

  @override
  final RestaurantMod data;

  @override
  String toString() {
    return 'DetailState.loadedFavorite(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedFavorite &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedFavoriteCopyWith<_$_LoadedFavorite> get copyWith =>
      __$$_LoadedFavoriteCopyWithImpl<_$_LoadedFavorite>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RestaurantDetailMod data) loaded,
    required TResult Function(RestaurantMod data) loadedFavorite,
    required TResult Function(List<CustomerReview> data) loadedReview,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return loadedFavorite(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RestaurantDetailMod data)? loaded,
    TResult? Function(RestaurantMod data)? loadedFavorite,
    TResult? Function(List<CustomerReview> data)? loadedReview,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return loadedFavorite?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RestaurantDetailMod data)? loaded,
    TResult Function(RestaurantMod data)? loadedFavorite,
    TResult Function(List<CustomerReview> data)? loadedReview,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (loadedFavorite != null) {
      return loadedFavorite(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedFavorite value) loadedFavorite,
    required TResult Function(_LoadedReview value) loadedReview,
    required TResult Function(_Error value) error,
  }) {
    return loadedFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedFavorite value)? loadedFavorite,
    TResult? Function(_LoadedReview value)? loadedReview,
    TResult? Function(_Error value)? error,
  }) {
    return loadedFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedFavorite value)? loadedFavorite,
    TResult Function(_LoadedReview value)? loadedReview,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedFavorite != null) {
      return loadedFavorite(this);
    }
    return orElse();
  }
}

abstract class _LoadedFavorite implements DetailState {
  const factory _LoadedFavorite(final RestaurantMod data) = _$_LoadedFavorite;

  RestaurantMod get data;
  @JsonKey(ignore: true)
  _$$_LoadedFavoriteCopyWith<_$_LoadedFavorite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedReviewCopyWith<$Res> {
  factory _$$_LoadedReviewCopyWith(
          _$_LoadedReview value, $Res Function(_$_LoadedReview) then) =
      __$$_LoadedReviewCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CustomerReview> data});
}

/// @nodoc
class __$$_LoadedReviewCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$_LoadedReview>
    implements _$$_LoadedReviewCopyWith<$Res> {
  __$$_LoadedReviewCopyWithImpl(
      _$_LoadedReview _value, $Res Function(_$_LoadedReview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_LoadedReview(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CustomerReview>,
    ));
  }
}

/// @nodoc

class _$_LoadedReview implements _LoadedReview {
  const _$_LoadedReview(final List<CustomerReview> data) : _data = data;

  final List<CustomerReview> _data;
  @override
  List<CustomerReview> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'DetailState.loadedReview(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedReview &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedReviewCopyWith<_$_LoadedReview> get copyWith =>
      __$$_LoadedReviewCopyWithImpl<_$_LoadedReview>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RestaurantDetailMod data) loaded,
    required TResult Function(RestaurantMod data) loadedFavorite,
    required TResult Function(List<CustomerReview> data) loadedReview,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return loadedReview(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RestaurantDetailMod data)? loaded,
    TResult? Function(RestaurantMod data)? loadedFavorite,
    TResult? Function(List<CustomerReview> data)? loadedReview,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return loadedReview?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RestaurantDetailMod data)? loaded,
    TResult Function(RestaurantMod data)? loadedFavorite,
    TResult Function(List<CustomerReview> data)? loadedReview,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (loadedReview != null) {
      return loadedReview(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedFavorite value) loadedFavorite,
    required TResult Function(_LoadedReview value) loadedReview,
    required TResult Function(_Error value) error,
  }) {
    return loadedReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedFavorite value)? loadedFavorite,
    TResult? Function(_LoadedReview value)? loadedReview,
    TResult? Function(_Error value)? error,
  }) {
    return loadedReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedFavorite value)? loadedFavorite,
    TResult Function(_LoadedReview value)? loadedReview,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedReview != null) {
      return loadedReview(this);
    }
    return orElse();
  }
}

abstract class _LoadedReview implements DetailState {
  const factory _LoadedReview(final List<CustomerReview> data) =
      _$_LoadedReview;

  List<CustomerReview> get data;
  @JsonKey(ignore: true)
  _$$_LoadedReviewCopyWith<_$_LoadedReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkExceptions error});

  $NetworkExceptionsCopyWith<$Res> get error;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Error(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res> get error {
    return $NetworkExceptionsCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final NetworkExceptions error;

  @override
  String toString() {
    return 'DetailState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RestaurantDetailMod data) loaded,
    required TResult Function(RestaurantMod data) loadedFavorite,
    required TResult Function(List<CustomerReview> data) loadedReview,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RestaurantDetailMod data)? loaded,
    TResult? Function(RestaurantMod data)? loadedFavorite,
    TResult? Function(List<CustomerReview> data)? loadedReview,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RestaurantDetailMod data)? loaded,
    TResult Function(RestaurantMod data)? loadedFavorite,
    TResult Function(List<CustomerReview> data)? loadedReview,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedFavorite value) loadedFavorite,
    required TResult Function(_LoadedReview value) loadedReview,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedFavorite value)? loadedFavorite,
    TResult? Function(_LoadedReview value)? loadedReview,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedFavorite value)? loadedFavorite,
    TResult Function(_LoadedReview value)? loadedReview,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DetailState {
  const factory _Error(final NetworkExceptions error) = _$_Error;

  NetworkExceptions get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
