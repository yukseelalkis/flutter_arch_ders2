

import 'dart:ui';

/// Bu Dart kodu, farklı dil yerel ayarlarını (locale) temsil eden `Locales` adında bir enum tanımlar.
/// Enum içinde iki değer yer alır:
/// - `tr`: Türkçe yerel ayar (Locale('tr', 'TR'))
/// - `en`: İngilizce yerel ayar (Locale('en', 'US'))
///
/// Her bir enum değeri, ilgili dile ait bir `Locale` nesnesi ile ilişkilidir.
/// `Locale` nesnesi, bir dil kodu ve opsiyonel olarak ülke kodu ile oluşturulur.
enum Locales {
  tr(Locale('tr', 'TR')),
  de(Locale('de', 'DE')),
  ru(Locale('ru', 'RU')),
  en(Locale('en', 'US'));

  /// Seçilen dilin `Locale` karşılığı burada tutulur.
  ///
  /// `Locale` sınıfı bir dili ve opsiyonel olarak ülkeyi temsil eder.
  /// Örnek:
  /// - `Locale('en')` → sadece dil
  /// - `Locale('tr', 'TR')` → dil ve ülke birlikte
  final Locale locale;

  /// Enum’un her bir değeri için ilgili `Locale` atanır.
  const Locales(this.locale);

  /// Bu liste, uygulamanın desteklediği tüm dilleri içerir.
  /// `Locales.tr` ve `Locales.en` enum değerlerinden alınan `Locale` nesnelerini içerir.
  static final List<Locale> supportedLocales = [
    Locales.tr.locale,
    Locales.de.locale,
    Locales.ru.locale,
    Locales.en.locale
  ];
}