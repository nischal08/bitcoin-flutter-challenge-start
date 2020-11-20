//TODO: Add your imports here.
import 'dart:convert';

import 'package:http/http.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL =
    'https://apiv2.bitcoinaverage.com/indices/global/ticker/BTCUSD';
const apiKey = 'F6827830-7D6F-4091-8B63-E97663C7C16F';

class CoinData {
  //TODO: Create your getCoinData() method here.

  Future getCoinData() async {
    Response response = await get(coinAPIURL);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print("Got error with statusCode ${response.statusCode}");
    }
  }
}
