part of 'favorite_bloc.dart';

@freezed
class FavoriteEvent with _$FavoriteEvent {
  const factory FavoriteEvent.started() = _Started;
  const factory FavoriteEvent.addtoFavorite({
    required RestaurantMod data,
  }) = _AddToFavorite;
  const factory FavoriteEvent.deleteFavorite({
    required String id,
  }) = _DeleteFavorite;
}
