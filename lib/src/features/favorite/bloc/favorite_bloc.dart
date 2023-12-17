import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant/src/data/db/database.dart';
import 'package:restaurant/src/data/models/restaurant/restaurant_mod.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';
part 'favorite_bloc.freezed.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(const FavoriteState.initial()) {
    on<FavoriteEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(const FavoriteState.loading());
          List<RestaurantMod> result =
              await DatabaseService.instance.getAllRestaurant();
          emit(FavoriteState.loaded(result));
        },
        addtoFavorite: (data) async {
          await DatabaseService.instance.create(data);
          RestaurantMod result =
              await DatabaseService.instance.getRestaurantById(id: data.id);
          emit(FavoriteState.addFavorite(result));
        },
        deleteFavorite: (id) async {
          await DatabaseService.instance.delete(id: id);
          emit(const FavoriteState.removeFavorite());
        },
      );
    });
  }
}
