

import 'package:arch_v2/feature/view/home_view.dart';
import 'package:arch_v2/product/init/application_initalize.dart';
import 'package:arch_v2/product/init/product_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

/// Bu fonksiyon, Flutter uygulamasını başlatmadan önce gerekli yerelleştirme (localization)
/// yapılandırmalarını hazırlar.
///
/// - `WidgetsFlutterBinding.ensureInitialized()`
///   → Flutter motorunun doer şekilde başlatıldığından emin olur.
///
/// - `EasyLocalization.ensureInitialized()`
///   → EasyLocalization paketinin hazır hale gelmesini sağlar.
///
/// - `runApp(ProductLocalization(child: const MyApp()))`
///   → Uygulama `ProductLocalization` sınıfı ile sarmalanarak çoklu dil desteği sağlanmış olur.
///
/// Bu yapı sayesinde uygulama, dil ayarlarını yükleyerek çalışmaya başlar.
Future<void> main() async {
  await ApplicationInitialize().make();
  runApp(ProductLocalization(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Uygulamanın kullanacağı yerelleştirme delegelerini belirtir.
        // Çeviri, tarih/sayı formatlama gibi işlemler için gerekli altyapıyı sağlar.
        localizationsDelegates: context.localizationDelegates,

        // Uygulamanın desteklediği dillerin listesidir.
        // Bu liste genellikle enum ya da sabitler ile tanımlanır (örneğin: Locales.tr, Locales.en).
        supportedLocales: context.supportedLocales,

        // Uygulamanın aktif olarak kullanacağı dili belirtir.
        // Sistem diline göre ya da kullanıcı seçimine göre değişebilir.
        locale: context.locale,
        home: HomeView());
  }
}