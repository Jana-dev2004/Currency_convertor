import 'package:flutter/material.dart';

class CurrencyConvertor extends StatefulWidget {
  const CurrencyConvertor({super.key});
  @override
  State<CurrencyConvertor> createState() => _CurrencyConvertor();
}

class _CurrencyConvertor extends State<CurrencyConvertor> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
      borderRadius: BorderRadius.circular(5.0),
    );
    var textStyle = const TextStyle(
      color: Colors.black45,
    );
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Currency Covertor"),
        titleTextStyle: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ' INR : ${result !=0 ? result.toStringAsFixed(3):result.toStringAsFixed(0)}',
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Please enter the amount in USD',
                    hintStyle: textStyle,
                    prefixIcon: const Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      result = double.parse(textEditingController.text) * 83.37;
                    });
                  },
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                      minimumSize: MaterialStatePropertyAll(
                        Size(double.infinity, 50),
                      )),
                  child: const Text("Convert")),
            ),
          ],
        ),
      ),
    );
  }
}
