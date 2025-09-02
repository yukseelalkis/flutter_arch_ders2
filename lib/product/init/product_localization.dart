import 'package:arch_v2/product/utility/constant/enum/locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

/// `final` olarak işaretlenmesinin sebebi, bu sınıfın başka sınıflar tarafından
/// [extends] alınmasını önlemektir.
///
/// `ProductLocalization` sınıfı, `EasyLocalization` sınıfını genişletir.
/// Bu sınıf, uygulamanın çoklu dil (i18n) desteğini merkezi bir şekilde
/// yapılandırmak için oluşturulmuştur.
@immutable
final class ProductLocalization extends EasyLocalization {
  /// `ProductLocalization` constructor'ı yalnızca bir `child` parametresi alır
  /// ve
  /// bu parametreyi üst sınıfa (`EasyLocalization`) iletir.
  /// Ayrıca desteklenen diller (`supportedLocales`) ve çeviri dosyalarının yolu
  ///  (`path`) tanımlanır.
  ProductLocalization({required super.child})
      : super(
            supportedLocales: _supportedLocales,
            path: _translationPath,
            useOnlyLangCode: true);

  /// Uygulamanın desteklediği dillerin listesi.
  /// `Locales.tr.locale` ve `Locales.en.locale` kullanılarak Türkçe ve
  ///  İngilizce desteklenmektedir.
  /// Bu `Locale` değerleri, enum yapısından alınmaktadır.
  static final List<Locale> _supportedLocales = [
    Locales.tr.locale,
    Locales.de.locale,
    Locales.ru.locale,
    Locales.en.locale
  ];

  /// Çeviri dosyalarının bulunduğu klasör yolu.
  /// `asset/translations` dizini altında `.json` formatında dil dosyaları
  ///  bulunmalıdır.
  static final String _translationPath = 'asset/translations';

  /// BIZIM Dili degistiriyor olmamiz lazim
  ///
  /// `updateLanguage` fonksiyonu, verilen `BuildContext` üzerinden uygulamanın
  ///  dilini (locale) günceller.
  ///
  /// Parametreler:
  ///
  /// - `context` (`BuildContext`): Flutter'da mevcut widget ağacına ait bağlamı
  ///  temsil eder.
  ///   Tema, medya sorguları, yerelleştirme gibi verilere erişmek için
  ///  kullanılır.
  ///
  /// - `value` (`Locales`): Güncellenmek istenen yeni dili temsil eder.
  /// `Locales` enum türündedir ve zorunludur.

  static Future<void> updateLanguage(
          {required BuildContext context, required Locales value}) =>
      context.setLocale(value.locale);
}