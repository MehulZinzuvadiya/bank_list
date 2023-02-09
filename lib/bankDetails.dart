import 'package:flutter/material.dart';

import 'Model/dataModel.dart';

class BankDetails extends StatefulWidget {
  const BankDetails({Key? key}) : super(key: key);

  @override
  State<BankDetails> createState() => _BankDetailsState();
}

class _BankDetailsState extends State<BankDetails> {
  @override
  Widget build(BuildContext context) {
    dataModel m1 = ModalRoute.of(context)!.settings.arguments as dataModel;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "${m1.name}",
        ),
        centerTitle: true,
      ),

    ));
  }
}
