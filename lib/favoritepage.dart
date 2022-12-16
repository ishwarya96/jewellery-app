import 'package:event_management_app/Jewellery.dart';
import 'package:event_management_app/Constants.dart';
import 'package:event_management_app/jewellerywidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FavoritePage extends StatefulWidget {
  final List<Jewellery> favoritePlants;

  const FavoritePage({Key? key, required this.favoritePlants})
      : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: widget.favoritePlants.isEmpty
            ? Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                      child: Image.asset("assets/49-512.webp"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Your Favorited Jewellery",
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
                height: size.height * .5,
                child: ListView.builder(
                    itemCount: widget.favoritePlants.length,
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return PlantWidget(
                          index: index, plantList: widget.favoritePlants);
                    }),
              ));
  }
}
