import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                    launchUrl(Uri.parse("${m1.website}"));
                }, child: Text("Visit Website")),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: (){
                  launchUrl(Uri.parse("tel: ${m1.contact}"));
                }, child: Text("Call us")),
              ],
            ),
          ),

    ));
  }
}
