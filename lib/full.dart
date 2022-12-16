import 'package:event_management_app/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FullPage extends StatefulWidget {
  const FullPage({Key? key}) : super(key: key);

  @override
  State<FullPage> createState() => _FullPageState();
}

class _FullPageState extends State<FullPage> {
  List<String> values = [
    'assets/z fashion   1686.jpg',
    'assets/g1.jpg',
    'assets/g2.jpg',
    'assets/g3.jpg',
    'assets/g4.jpg',
    'assets/g5.jpg',
    'assets/g6.jpg',
    'assets/g7.jpg',
    'assets/g8.jpg',
    'assets/g9.webp',
    'assets/g10.jpg',
    'assets/g11.jpg',
    'assets/g12.jpg',
    'assets/g13.jpg',
    'assets/g14.jpg',
    'assets/g15.jpg',
    'assets/g16.jpg',
    'assets/g17.jpg',
    'assets/g18.jpg',
    'assets/g19.jpg',
    'assets/g20.jpg',
    'assets/g21.jpg',
    'assets/g22.jpg',
    'assets/g23.jpg',
    'assets/g24.jpg',
    'assets/g25.jpg',
    'assets/g26.jpg',
    'assets/g27.jpg',
    'assets/g28.jpg',
    'assets/g30.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "MORE COLLECTIONS",
              style: TextStyle(
                color: Constants.blackColor,
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
            Icon(
              Icons.notifications,
              color: Constants.blackColor,
              size: 30.0,
            )
          ],
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
      ),
      body: Container(
        child: GridView.builder(
          itemCount: values.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 10,
              child: Center(
                child: Image.asset(
                  values[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        ),
      ),
    );
  }
}
