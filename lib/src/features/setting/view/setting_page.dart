// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/src/config/constant.dart';
import 'package:restaurant/src/config/theme/colors.dart';
import 'package:restaurant/src/cubits/setting_cubit.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<SettingCubit>(context)..initValue();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: AppConstants.kPaddingM),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Show Notification",
                  style: TextStyle(
                    fontSize: AppConstants.kFontSizeM,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                BlocBuilder<SettingCubit, bool>(
                  builder: (context, state) {
                    return Switch.adaptive(
                      activeColor: UIColors.white,
                      value: bloc.state,
                      onChanged: (value) async {
                        BlocProvider.of<SettingCubit>(context)
                            .changeValue(value);
                      },
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
