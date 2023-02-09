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
          return BankWidget(bank[index], color[index]);
        },
      ),
    ));
  }

  Widget BankWidget(
    String n1,
    Color c1,
  ) {
    return InkWell(
      onTap: () {
        dataModel m1 = dataModel(n1);
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
