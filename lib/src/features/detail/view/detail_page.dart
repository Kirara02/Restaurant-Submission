// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:restaurant/src/config/constant.dart';
import 'package:restaurant/src/config/screen.dart';
import 'package:restaurant/src/config/theme/colors.dart';
import 'package:restaurant/src/data/db/database.dart';
import 'package:restaurant/src/data/models/restaurant/restaurant_mod.dart';
import 'package:restaurant/src/data/models/restaurant_detail/restaurant_detail_mod.dart';
import 'package:restaurant/src/features/detail/bloc/detail_bloc.dart';
import 'package:restaurant/src/features/detail/widget/category_badge.dart';
import 'package:restaurant/src/features/detail/widget/drink_card.dart';
import 'package:restaurant/src/features/detail/widget/food_card.dart';
import 'package:restaurant/src/features/detail/widget/review_list_tile.dart';
import 'package:restaurant/src/features/favorite/bloc/favorite_bloc.dart';
import 'package:restaurant/src/utils/dismiss_keyboard.dart';
import 'package:restaurant/src/utils/logger.dart';
import 'package:restaurant/src/widgets/dialogs/ux_toast_wrapper.dart';

class DetailPage extends StatefulWidget {
  final RestaurantMod? restaurant;

  const DetailPage({Key? key, this.restaurant}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController reviewController = TextEditingController();

  bool showMore = false;
  RestaurantMod? localData;

  @override
  void initState() {
    super.initState();
    _getLocalData();
  }

  void _getLocalData() async {
    localData = await DatabaseService.instance
        .getRestaurantById(id: widget.restaurant!.id);
  }

  Future _toast(String? message) {
    return UXToast.show(
        message: message ?? '',
        backgroundColor: AppColors.danger,
        textColor: UIColors.white);
  }

  Future<bool> _sendData() async {
    if (nameController.text.isEmpty) {
      _toast("Name belum diisi");
      return false;
    } else if (reviewController.text.isEmpty) {
      _toast("Review belum diisi");
      return false;
    }

    return true;
  }

  _showModalAddReview(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return BlocProvider(
          create: (context) => DetailBloc(),
          child: Builder(
            builder: (context) {
              return Dialog(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Add Reviews",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          filled: false,
                          label: Text("Name"),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        controller: reviewController,
                        decoration: const InputDecoration(
                          filled: false,
                          label: Text("Review"),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: AppScreens.width,
                        child: ElevatedButton(
                          onPressed: () {
                            _sendData().then((value) {
                              if (value != false) {
                                context.read<DetailBloc>().add(
                                    DetailEvent.addReview(
                                        id: widget.restaurant!.id,
                                        name: nameController.text,
                                        review: reviewController.text));

                                nameController.clear();
                                reviewController.clear();

                                UXToast.show(
                                    message: "Refresh untuk memperbarui data!");
                                // Close the dialog
                                Navigator.pop(context);
                              }
                              hideKeyboard(context);
                            });
                          },
                          child: const Text("Send"),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => DetailBloc()
              ..add(DetailEvent.started(id: widget.restaurant!.id))),
        BlocProvider(
          create: (context) => FavoriteBloc(),
        ),
      ],
      child: SafeArea(
        child: Scaffold(
          body: BlocBuilder<DetailBloc, DetailState>(
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
                  return Builder(builder: (context) {
                    return RefreshIndicator(
                      onRefresh: () => Future.sync(() {
                        context.read<DetailBloc>().add(
                            DetailEvent.started(id: widget.restaurant!.id));
                      }),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildHeader(context, data),
                            _buildBody(data),
                          ],
                        ),
                      ),
                    );
                  });
                },
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _showModalAddReview(context),
            child: const Icon(
              Icons.add_comment_rounded,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, RestaurantDetailMod data) {
    return Container(
      width: AppScreens.width,
      height: 300,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken),
          image: CachedNetworkImageProvider(
              "https://restaurant-api.dicoding.dev/images/large/${data.pictureId}"),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () => Navigator.of(context).pop(true),
                child: const Icon(
                  Icons.arrow_back_outlined,
                  color: UIColors.white,
                ),
              ),
              BlocListener<FavoriteBloc, FavoriteState>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () {},
                    addFavorite: (data) {
                      setState(() {
                        localData = data;
                      });
                      dLog(localData);
                      UXToast.show(message: "Berhasil di simpan ke favorite");
                    },
                    removeFavorite: () {
                      setState(() {
                        localData = const RestaurantMod(
                            id: "",
                            name: "",
                            description: "",
                            pictureId: "",
                            city: "",
                            rating: 0);
                      });
                      dLog(localData);
                      UXToast.show(message: "Berhasil di hapus dari favorite");
                    },
                  );
                },
                child: InkWell(
                  onTap: () {
                    if (data.id == localData!.id) {
                      context
                          .read<FavoriteBloc>()
                          .add(FavoriteEvent.deleteFavorite(id: localData!.id));
                    } else if (data.id != localData!.id) {
                      context.read<FavoriteBloc>().add(
                          FavoriteEvent.addtoFavorite(
                              data: widget.restaurant!));
                    }
                  },
                  child: Builder(builder: (context) {
                    final IconData favoriteIcon = data.id == localData!.id
                        ? Icons.favorite
                        : Icons.favorite_border;

                    return Icon(
                      favoriteIcon,
                      color: UIColors.grey_40,
                    );
                  }),
                ),
              )
            ],
          ),
          const Spacer(),
          Text(
            data.name,
            style: const TextStyle(
              fontSize: AppConstants.kFontSizeXL,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          RatingBar.builder(
            initialRating: data.rating,
            itemSize: 16,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            ignoreGestures: true,
            onRatingUpdate: (rating) {
              log(rating.toString());
            },
          ),
        ],
      ),
    );
  }

  Widget _buildBody(RestaurantDetailMod data) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Location",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: UIColors.grey_60,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            data.city,
            style: const TextStyle(
              fontSize: AppConstants.kFontSizeS,
              color: UIColors.grey_20,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            "Description",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: UIColors.grey_60,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            showMore
                ? data.description
                : data.description.length > 150
                    ? '${data.description.substring(0, 150)}...'
                    : data.description,
            style: const TextStyle(
              fontSize: AppConstants.kFontSizeS,
              color: UIColors.grey_20,
            ),
          ),
          if (data.description.length > 150)
            Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showMore = !showMore;
                    });
                  },
                  child: Text(
                    showMore ? 'Lebih Sedikit' : 'Lebih Banyak',
                    style: const TextStyle(
                      fontSize: AppConstants.kFontSizeS,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            "Categories",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: UIColors.grey_60,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Wrap(
              spacing: 5,
              children: data.categories
                  .map((category) => CategoryBadge(category: category))
                  .toList()),
          const SizedBox(
            height: 12,
          ),
          const Text(
            "Foods",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: UIColors.grey_60,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          FoodCard(data: data.menus.foods),
          const SizedBox(
            height: 12,
          ),
          const Text(
            "Drinks",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: UIColors.grey_60,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          DrinkCard(data: data.menus.drinks),
          const SizedBox(
            height: 12,
          ),
          _buildReview(context, data.customerReviews),
        ],
      ),
    );
  }

  Widget _buildReview(
      BuildContext context, List<CustomerReview> customerReviews) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Customers Review",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: UIColors.grey_60,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: customerReviews.length,
          itemBuilder: (context, index) {
            final item = customerReviews[index];
            return ReviewListTile(data: item);
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    reviewController.dispose();
  }
}
