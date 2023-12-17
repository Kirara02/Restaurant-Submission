part of 'detail_bloc.dart';

@freezed
class DetailEvent with _$DetailEvent {
  const factory DetailEvent.started({
    required String id,
  }) = _Started;
  const factory DetailEvent.addReview(
      {String? id, String? name, String? review}) = _AddReview;
  const factory DetailEvent.loadFavorite({
    required RestaurantMod data,
  }) = _LoadFavorite;
}
