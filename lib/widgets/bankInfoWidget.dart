import 'package:flutter/material.dart';

import '../utils/customText.dart';

class BankInfoWidget extends StatelessWidget {
  const BankInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.check),
              title: CustomText(
                text: "Bank Details",
              ),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
    );
  }
}
