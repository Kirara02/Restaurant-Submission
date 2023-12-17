import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:restaurant/src/config/theme/colors.dart';
import 'package:restaurant/src/widgets/common/restaurant_card.dart';
import 'package:restaurant/src/features/home/bloc/home_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/src/features/search/view/search_page.dart';
import 'package:restaurant/src/widgets/dialogs/ux_toast_wrapper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc()..add(const HomeEvent.started()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Restaurant List"),
          actions: [
            IconButton(
              onPressed: () => Navigator.of(context).push(PageTransition(
                  child: const SearchPage(),
                  type: PageTransitionType.bottomToTop)),
              icon: const Icon(
                CupertinoIcons.search,
              ),
            )
          ],
        ),
        body: Builder(builder: (context) {
          return RefreshIndicator(
            onRefresh: () => Future.sync(
                () => context.read<HomeBloc>()..add(const HomeEvent.started())),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Column(
                children: [
                  BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => const SizedBox(),
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      error: (error) => error.maybeWhen(
                        orElse: () => const SizedBox(),
                        unexpectedError: () {
                          UXToast.show(
                            message:
                                "An unexpected error occurred. Please try again later.",
                            backgroundColor: AppColors.danger,
                            textColor: UIColors.white,
                          );
                          return Container(
                            height: 200,
                            alignment: Alignment.center,
                            child: const Text(
                                "An unexpected error occurred. Please try again later."),
                          );
                        },
                      ),
                      loaded: (data) {
                        return ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            var restaurant = data[index];
                            return RestaurantCard(restaurant: restaurant);
                          },
                        );
                      },
                    );
                  }),
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
