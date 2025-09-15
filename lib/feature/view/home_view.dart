import 'package:arch_v2/product/init/config/app_enviroment.dart';
import 'package:arch_v2/product/init/language/locale_keys.g.dart';
import 'package:arch_v2/product/init/product_localization.dart';
import 'package:arch_v2/product/utility/constant/enum/locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen2/gen2.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(LocaleKeys.home_title).tr()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.abc_sharp),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.lottie.animFintract.lottie(package: 'gen2'),
          ElevatedButton(
            onPressed: () {},
            child: Text(AppEnvironmentItems.getCustomerDetailDomain.value),
          ),
          const Text('Change Language'),
          ElevatedButton(
            onPressed: () {
              ProductLocalization.updateLanguage(
                context: context,
                value: Locales.tr,
              );
            },
            child: const Text(LocaleKeys.general_button_save).tr(),
          ),
        ],
      ),
    );
  }
}
