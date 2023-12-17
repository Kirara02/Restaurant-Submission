import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant/src/core/api_result.dart';
import 'package:restaurant/src/core/network_exceptions.dart';
import 'package:restaurant/src/data/models/restaurant/restaurant_mod.dart';
import 'package:restaurant/src/data/services/repository_service.dart';
import 'package:restaurant/src/utils/logger.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(const HomeState.loading());
          ApiResult<List<RestaurantMod>> result =
              await RestaurantService().getRestaurants();

          result.when(
            success: (data) => emit(HomeState.loaded(data)),
            failure: (error) => emit(HomeState.error(error)),
          );
        },
      );
    });
  }

  @override
  void onEvent(HomeEvent event) {
    dLog(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<HomeState> change) {
    dLog(change);
    super.onChange(change);
  }
}
