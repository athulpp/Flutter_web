import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_web/utils/colors.dart';
import 'package:responsive_web/utils/constraints.dart';
import 'package:responsive_web/utils/styles.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop: DesktopNavBar(),
      tablet: TabletNavBar(),
    );
  }

  Widget TabletNavBar() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.menu),
            Row(
              children: [
                navButton('Features'),
                navButton('About us'),
                navButton('Pricing'),
                navButton('Feedback'),
              ],
            ),
            navLogo()
          ],
        ),
      ),
    );
  }

  Widget MobileNavBar() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Icon(Icons.menu), navLogo()],
        ),
      ),
    );
  }

  Widget DesktopNavBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton('Features'),
              navButton('About us'),
              navButton('Pricing'),
              navButton('Feedback'),
            ],
          ),
          Container(
              height: 45,
              child: ElevatedButton(
                  style: borderedButtonStyle,
                  onPressed: () {},
                  child: Text(
                    'Request a demo',
                    style: TextStyle(color: AppColors.primary),
                  )))
        ],
      ),
    );
  }

  Widget navButton(String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! * 0.008),
      child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: w! / 50),
          )),
    );
  }

  Widget navLogo() {
    return Container(
      width: 110,
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(logo))),
    );
  }
}
