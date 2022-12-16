import 'package:event_management_app/Jewellery.dart';
import 'package:event_management_app/Constants.dart';
import 'package:event_management_app/jewellerywidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CartPage extends StatefulWidget {
  final List<Jewellery> addedToCartPlants;
  const CartPage({Key? key, required this.addedToCartPlants}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: widget.addedToCartPlants.isEmpty
            ? Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                      child: Image.asset("assets/shopping-cart-heart-512.webp"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Your Cart is Empty",
                      style: TextStyle(
                          color: Constants.primaryColor,
                          fontWeight: FontWeight.w300,
                          fontSize: 18),
                    )
                  ],
                ),
              )
            : Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
                height: size.height,
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                          itemCount: widget.addedToCartPlants.length,
                          scrollDirection: Axis.vertical,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return PlantWidget(
                                index: index,
                                plantList: widget.addedToCartPlants);
                          }),
                    ),
                    Column(
                      children: [
                        const Divider(
                          thickness: 1.0,
                        ),
                      ],
                    )
                  ],
                ),
              ));
  }
}
