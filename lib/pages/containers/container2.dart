import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_web/utils/colors.dart';
import 'package:responsive_web/utils/constraints.dart';

class Container2 extends StatefulWidget {
  const Container2({Key? key}) : super(key: key);

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => MobileContainer2(),
      desktop: (BuildContext context) => DesktopContainer2(),
      tablet: (BuildContext context) => TableContainer2(),
    );
  }

  Widget TableContainer2() {
    return Container(
      height: 700,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(children: [
        Expanded(
            child: Stack(
          children: [
            Positioned(
              right: -10,
              top: -10,
              child: Container(
                height: 220,
                width: 220,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(vector1), fit: BoxFit.contain)),
              ),
            ),
            Positioned(
                bottom: -10,
                left: -10,
                child: Container(
                  height: 220,
                  width: 220,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(vector2), fit: BoxFit.contain)),
                )),
            Positioned(
              left: 13,
              right: 13,
              bottom: 0,
              child: Container(
                width: double.infinity,
                height: 512,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(dashboard))),
              ),
            )
          ],
        )),
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              companyLogo(fb),
              companyLogo(google),
              companyLogo(cocacola),
              companyLogo(samsung)
            ],
          ),
        )
      ]),
    );
  }

  Widget DesktopContainer2() {
    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(children: [
        Expanded(
            child: Stack(
          children: [
            Positioned(
              right: -20,
              top: -20,
              child: Container(
                height: 320,
                width: 320,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(vector1), fit: BoxFit.contain)),
              ),
            ),
            Positioned(
                bottom: -20,
                left: -20,
                child: Container(
                  height: 320,
                  width: 320,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(vector2), fit: BoxFit.contain)),
                )),
            Positioned(
              left: 43,
              right: 43,
              bottom: 0,
              child: Container(
                width: double.infinity,
                height: 712,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(dashboard))),
              ),
            )
          ],
        )),
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              companyLogo(fb),
              companyLogo(google),
              companyLogo(cocacola),
              companyLogo(samsung)
            ],
          ),
        )
      ]),
    );
  }

  Widget companyLogo(String image) {
    return Container(
      width: 160,
      height: 40,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(image), fit: BoxFit.contain)),
    );
  }

  Widget MobileContainer2() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(children: [
        Container(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 0, top: 20),
          child: Container(
            height: 195,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(dashboard), fit: BoxFit.contain),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              companyLogo(fb),
              companyLogo(google),
              companyLogo(cocacola),
              companyLogo(samsung)
            ],
          ),
        )
      ]),
    );
  }
}
