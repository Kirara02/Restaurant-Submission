import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/src/features/favorite/bloc/favorite_bloc.dart';
import 'package:restaurant/src/widgets/common/restaurant_card.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoriteBloc()..add(const FavoriteEvent.started()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Favorite"),
        ),
        body: Builder(builder: (context) {
          return RefreshIndicator(
            onRefresh: () => Future.sync(() {
              context.read<FavoriteBloc>().add(const FavoriteEvent.started());
            }),
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  BlocBuilder<FavoriteBloc, FavoriteState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => const SizedBox(),
                        loading: () => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        loaded: (data) {
                          if (data.isNotEmpty) {
                            return ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: data.length,
                              itemBuilder: (context, index) {
                                var restaurant = data[index];
                                return RestaurantCard(restaurant: restaurant);
                              },
                            );
                          }
                          return const Center(
                              child: Text("Belum ada restaurant favorite"));
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
