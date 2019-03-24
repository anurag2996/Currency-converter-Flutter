import 'package:flutter/widgets.dart';
import './dashboard.dart';
import 'package:flutter/material.dart';
import './main.dart';

class CurrencyService {
  getCurrencyString(currency){
    if(currency == 'USD') return 'United States Dollar';
    if(currency == 'RUB') return 'Russian Ruble';
  }
  convertCurrency(String fromCurrency, String toCurrency, int amount, context){
    if(fromCurrency == 'USD'){
      switch(toCurrency){
        case 'RUB':
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context)=> DashboardPage(
            currencyVal: amount,
            convertedCurrency: (amount * 65).roundToDouble(),
            currencyone: fromCurrency,
            currencytwo: toCurrency,
            isWhite: false,
          )
        ));

      }
    }
    if (fromCurrency == 'RUB') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context)=> DashboardPage(
            currencyVal: (amount / 65).toStringAsFixed(2),
            convertedCurrency: amount,
            currencyone: toCurrency,
            currencytwo: fromCurrency,
            isWhite: true,
          )
        ));
    }
    }

  
  }