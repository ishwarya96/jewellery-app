import 'package:event_management_app/paymentsuccess.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart' as http;

class BuyNow extends StatefulWidget {
  const BuyNow({Key? key}) : super(key: key);

  @override
  State<BuyNow> createState() => _BuyNowState();
}

class _BuyNowState extends State<BuyNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueGrey, title: const Text("payment")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 350,
                child: Container(
                  height: 250,
                  width: 250,
                  child: Form(
                      child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        'do payment here',
                        style: TextStyle(fontSize: 21),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'Enter the amount'),
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return "Please Enter amount";
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => PaymentPage()));
                          },
                          child: const Text(
                            "Pay Now",
                          ))
                    ],
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
