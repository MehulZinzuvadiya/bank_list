import 'package:flutter/material.dart';
import 'Model/dataModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List bank = [
    "1.Bank of Baroda",
    "2.Bank of India",
    "3.Central Bank of India",
    "4.Punjab National Bank",
    "5.State Bank of India",
    "6.Axis Bank Ltd.",
    "7.HDFC Bank Ltd",
    "8.ICICI Bank Ltd.",
    "9.Induslnd Bank Ltd",
    "10.South Indian Bank Ltd.",
  ];
  List website = [
    "https://www.bankofbaroda.in/",
    "https://bankofindia.co.in/",
    "https://www.centralbankofindia.co.in/en",
    "https://www.pnbindia.in/",
    "https://www.onlinesbi.sbi/",
    "https://www.axisbank.com/",
    "https://www.hdfcbank.com/",
    "https://www.icicibank.com/",
    "https://www.indusind.com/in/en/personal.html",
    "https://www.southindianbank.com/",
  ];
  List contact=[
    "1800 258 44 55",
    "1800 103 1906",
    "1800 22 1911",
    "1800 180 2222",
    "1800 1234",
    "1860 419 5555",
    "1800 202 6161",
    "1800 1080",
    "1860 267 7777",
    "1800 425 1809",
  ];
  List images = [];
  List color = [
    Colors.orange,
    Colors.lightBlueAccent,
    Colors.brown.shade300,
    Colors.green.shade400,
    Colors.purple.shade300,
    Colors.grey.shade200,
    Colors.indigo.shade300,
    Colors.teal,
    Colors.yellow.shade300,
    Colors.cyan.shade200,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.red.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Details of Bank",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: bank.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return BankWidget(bank[index], color[index], website[index],contact[index]);
        },
      ),
    ));
  }

  Widget BankWidget(
    String n1,
    Color c1,
    String w1,
      String call,
  ) {
    return InkWell(
      onTap: () {
        dataModel m1 = dataModel(n1, w1,call);
        Navigator.pushNamed(context, 'details', arguments: m1);
      },
      child: Container(
        height: 90,
        width: double.infinity,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: c1,
          border: Border.all(color: Colors.lightBlueAccent),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${n1}",
              style: TextStyle(fontSize: 18, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
