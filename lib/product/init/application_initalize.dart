import 'dart:async';

import 'package:arch_v2/product/init/config/app_enviroment.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gen2/gen2.dart';
import 'package:kartal/kartal.dart';
import 'package:logger/logger.dart';

@immutable
final class ApplicationInitialize {
  /// The line ⁠ const ApplicationInitialize.setup(); ⁠ is defining a constant constructor for the
  /// ⁠ ApplicationInitialize ⁠ class. This constructor is named ⁠ setup ⁠ and does not take any arguments. It
  /// can be used to create instances of the ⁠ ApplicationInitialize ⁠ class with the ⁠ setup ⁠ constructor.
  /// Since it is a constant constructor, it can be invoked without creating a new instance of the class.
  // const ApplicationInitialize.setup();

  // kucuk bir try catxh mantigi bir scope kendi icinde calisitirp daha  detayli hata gormemizi sagliyor
  Future<void> make() async {
    WidgetsFlutterBinding.ensureInitialized();

    await runZonedGuarded<Future<void>>(_initialize, (error, stack) {
      Logger().e(error);
    });
  }

  Future<void> _initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    EasyLocalization.logger.enableLevels = [LevelMessages.error];
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    await DeviceUtility.instance.initPackageInfo();
    // Firebase initiliza islemleri de buraya gellecek

    // envied islemleri gelecek
    AppEnvironment.setup(config: DevEnv());

    /// Load environment configs

    FlutterError.onError = (details) {
      // bunu bir katman olarak yazacak hoca
      Logger().e(details.exceptionAsString());
    };
  }
}
