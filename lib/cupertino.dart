import 'package:flutter/cupertino.dart';

class Cupertinopage extends StatefulWidget {
  const Cupertinopage({super.key});

  @override
  State<Cupertinopage> createState() => _CupertinopageState();
}

class _CupertinopageState extends State<Cupertinopage> {
   double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey,
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Currency Covertor"),
        
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ' INR : ${result !=0 ? result.toStringAsFixed(3):result.toStringAsFixed(0)}',
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: CupertinoColors.white),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: CupertinoTextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: CupertinoColors.black,
                  ),
                  decoration:  BoxDecoration(
                  color: CupertinoColors.white,
                  border:Border.all(),
                  borderRadius: BorderRadius.circular(5),
                   ),
                   placeholder: "Enterin the Amount in USD",
                   prefix: const Icon(CupertinoIcons.money_dollar),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:CupertinoButton(
                color: CupertinoColors.black,
                  onPressed: () {
                    setState(() {
                      result = double.parse(textEditingController.text) * 83.37;
                    });
                  },
                  child: const Text("Convert",style: TextStyle(color: CupertinoColors.white),)),
            ),
          ],
        ),
      ),
    );
  }
}