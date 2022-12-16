import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:event_management_app/Jewellery.dart';
import 'package:event_management_app/cart_page.dart';
import 'package:event_management_app/Constants.dart';
import 'package:event_management_app/favoritepage.dart';
import 'package:event_management_app/home.dart';

import 'package:event_management_app/profile_page.dart';
import 'package:event_management_app/scan_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_transition/page_transition.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  List<Jewellery> favorites = [];
  List<Jewellery> mycart = [];
  int _bottomNavIndex = 0;

  List<Widget> _widgetOptions() {
    return [
      const HomeScreen(),
      FavoritePage(
        favoritePlants: favorites,
      ),
      CartPage(
        addedToCartPlants: mycart,
      ),
      const ProfilePage()
    ];
  }

  List<IconData> iconList = [
    Icons.home,
    Icons.favorite,
    Icons.shopping_cart,
    Icons.person
  ];

  List<String> titleList = [
    'Home',
    'Favorite',
    'Cart',
    'Profile',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titleList[_bottomNavIndex],
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
      body: IndexedStack(
        index: _bottomNavIndex,
        children: _widgetOptions(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  child: const ScanPage(),
                  type: PageTransitionType.bottomToTop));
        },
        child: Image.asset(
          "assets/41C68Cd9eoL.png",
          height: 30,
        ),
        backgroundColor: Constants.primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          splashColor: Constants.primaryColor,
          activeColor: Constants.primaryColor,
          inactiveColor: Colors.black.withOpacity(.5),
          icons: iconList,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          onTap: (index) {
            setState(() {
              _bottomNavIndex = index;
              final List<Jewellery> favoritedPlants =
                  Jewellery.getFavoritedPlants();
              final List<Jewellery> addToCartPlants =
                  Jewellery.addedToCartPlants();

              favorites = favoritedPlants;
              mycart = addToCartPlants.toSet().toList();
            });
          }),
    );
  }
}
