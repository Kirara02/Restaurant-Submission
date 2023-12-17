import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant/src/core/api_result.dart';
import 'package:restaurant/src/core/network_exceptions.dart';
import 'package:restaurant/src/data/models/restaurant/restaurant_mod.dart';
import 'package:restaurant/src/data/services/repository_service.dart';
import 'package:restaurant/src/utils/logger.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const SearchState.initial()) {
    on<SearchEvent>((event, emit) async {
      await event.when(
        started: (key) async {
          emit(const SearchState.loading());
          ApiResult<List<RestaurantMod>> result =
              await RestaurantService().searchRestaurants(key: key);

          result.when(
            success: (data) => emit(SearchState.loaded(data)),
            failure: (error) => emit(SearchState.error(error)),
          );
        },
      );
    });
  }

  @override
  void onEvent(SearchEvent event) {
    dLog(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<SearchState> change) {
    dLog(change);
    super.onChange(change);
  }
}
