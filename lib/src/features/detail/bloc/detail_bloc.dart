import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant/src/core/api_result.dart';
import 'package:restaurant/src/core/network_exceptions.dart';
import 'package:restaurant/src/data/db/database.dart';
import 'package:restaurant/src/data/models/restaurant/restaurant_mod.dart';
import 'package:restaurant/src/data/models/restaurant_detail/restaurant_detail_mod.dart';
import 'package:restaurant/src/data/services/repository_service.dart';
import 'package:restaurant/src/utils/logger.dart';

part 'detail_event.dart';
part 'detail_state.dart';
part 'detail_bloc.freezed.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc() : super(const DetailState.initial()) {
    on<DetailEvent>((event, emit) async {
      await event.when(
        started: (id) async {
          emit(const DetailState.loading());
          ApiResult<RestaurantDetailMod> result =
              await RestaurantService().getDetailRestaurant(id: id);

          result.when(
            success: (data) => emit(DetailState.loaded(data)),
            failure: (error) => emit(DetailState.error(error)),
          );
        },
        addReview: (id, name, review) async {
          emit(const DetailState.loading());
          ApiResult<List<CustomerReview>> result = await RestaurantService()
              .addReview(id: id!, name: name!, review: review!);

          result.when(
            success: (data) => emit(DetailState.loadedReview(data)),
            failure: (error) => emit(DetailState.error(error)),
          );
        },
        loadFavorite: (data) async {
          final result =
              await DatabaseService.instance.getRestaurantById(id: data.id);
          emit(DetailState.loadedFavorite(result));
        },
      );
    });
  }

  @override
  void onEvent(DetailEvent event) {
    dLog(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<DetailState> change) {
    dLog(change);
    super.onChange(change);
  }
}
