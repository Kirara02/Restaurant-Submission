part of 'detail_bloc.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState.initial() = _Initial;
  const factory DetailState.loading() = _Loading;

  const factory DetailState.loaded(RestaurantDetailMod data) = _Loaded;
  const factory DetailState.loadedFavorite(RestaurantMod data) =
      _LoadedFavorite;
  const factory DetailState.loadedReview(List<CustomerReview> data) =
      _LoadedReview;
  const factory DetailState.error(NetworkExceptions error) = _Error;
}
