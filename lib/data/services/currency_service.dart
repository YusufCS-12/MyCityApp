import 'dart:convert';

import 'package:bingol/data/api/api_client.dart';
import 'package:bingol/models/currency.dart';
import 'package:http/http.dart';

class CurrencyService {
  static Currency currency = Currency.empty();
  static CurrencyService _singleton = CurrencyService._internal();

  factory CurrencyService() {
    return _singleton;
  }

  CurrencyService._internal();

  static Future<List<Currency>> getCurrency() async {
    final Response response = await ApiClient.getCurrencies();
    if(response.statusCode == 200) {
      List<Currency> currencyList = List();
      Map currencies = json.decode(utf8.decode(response.bodyBytes));
      currencyList.add(Currency.fromJson(currencies['ABD DOLARI'], 'ABD Doları'));
      currencyList.add(Currency.fromJson(currencies['EURO'], 'Euro'));
      currencyList.add(Currency.fromJson(currencies['Gram Altın'], 'Gram Altın'));
      currencyList.add(Currency.fromJson(currencies['Çeyrek Altın'], 'Çeyrek Altın'));
      currencyList.add(Currency.fromJson(currencies['Cumhuriyet Altını'], 'Cumhuriyet Altını'));
      currencyList.add(Currency.fromJson(currencies['Gümüş'], 'Gümüş'));
      return currencyList;
    }
    else {
      return null;
    }
  }
}
