part of 'favorite_bloc.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState.initial() = _Initial;
  const factory FavoriteState.loading() = _Loading;
  const factory FavoriteState.addFavorite(RestaurantMod data) = _AddFavorite;
  const factory FavoriteState.removeFavorite() = _RemoveFavorite;
  const factory FavoriteState.loaded(List<RestaurantMod> data) = _Loaded;
}
