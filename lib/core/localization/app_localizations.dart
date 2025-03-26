import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  String get appTitleMessage;
  String get favorite;
  String get allProducts;
  String get emptyProducts;
  String get emptySearch;
  String get search;
  String get addToCart;
  String get testMessage;
  String get egp;
  String get addedDone;
  String get toTheCart;
  String get totalAmount;
  String get createInvoice;
  String get cartPage;
  String get items;
  String get profile;
  String get invoices;
  String get productsManagment;
  String get addProduct;
  String get editProduct;
  String get title;
  String get price;
  String get description;
  String get choosePictureMessage;
  String get camera;
  String get gallary;
  String get productPhotoMessage;
  String get entreDescription;
  String get shortDescription;
  String get enterPrice;
  String get enterValidPrice;
  String get entreTitle;
  String get choosePictureFirstMessage;
  String get shirtsName;
  String get pantsName;
  String get shoesName;
  String get otherName;
  String get chooseTypeMessage;
  String get pressToChooseMessage;
  String get chooseCategoryType;
  String get orderedMessage;
  String get closeMessage;
  String get allMessage;
  String get emptyFavorite;
  String get emptyFavoriteSearch;
  String get chooseCategoryMessage;
  String get confirmingMessage;
  String get deleteMessage;
  String get yes;
  String get cancel;
  String get retry;

  String get ar;
  String get en;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
