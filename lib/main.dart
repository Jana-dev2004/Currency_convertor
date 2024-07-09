import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'currencyconvertor.dart';
import 'cupertino.dart';
void main()
{
  return runApp(const MyWidget());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConvertor(),
    );
  }
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: Cupertinopage(),
    );
  }
}