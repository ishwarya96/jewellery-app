import 'package:event_management_app/root_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Column(children: [
            Text(
              "Payment Successful",
              style: TextStyle(fontSize: 25),
            ),
            TextButton.icon(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (ctx) => RootPage()));
                },
                icon: Icon(Icons.done),
                label: Text('Thanks For Shopping'))
          ]),
        ),
      ),
    );
  }
}
