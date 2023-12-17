import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/l10n/locale_keys.g.dart';
import 'package:restaurant/src/config/constant.dart';
import 'package:restaurant/src/config/theme/colors.dart';
import 'package:restaurant/src/widgets/common/restaurant_card.dart';
import 'package:restaurant/src/features/search/bloc/search_bloc.dart';
import 'package:restaurant/src/widgets/dialogs/ux_toast_wrapper.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late SearchBloc _searchBloc;
  late FocusNode myFocusNode;
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchBloc = SearchBloc();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _searchBloc,
      child: Builder(builder: (context) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Search"),
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Column(
                children: [
                  TextField(
                    controller: searchController,
                    autofocus: true,
                    focusNode: myFocusNode,
                    style: const TextStyle(
                      fontSize: AppConstants.kFontSizeS,
                      color: UIColors.text,
                    ),
                    decoration: InputDecoration(
                      hintText: LocaleKeys.global_text_search.tr(),
                      suffixIcon: const Icon(
                        CupertinoIcons.search,
                        color: UIColors.custom_grey1,
                      ),
                    ),
                    onSubmitted: (value) {
                      context
                          .read<SearchBloc>()
                          .add(SearchEvent.started(key: searchController.text));
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<SearchBloc, SearchState>(
                    builder: (context, state) {
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
                            return const Center(
                              child: Text(
                                  "An unexpected error occurred. Please try again later."),
                            );
                          },
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
                          return Text(LocaleKeys.global_text_not_found.tr());
                        },
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
