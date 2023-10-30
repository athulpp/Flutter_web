import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_web/utils/constraints.dart';
import 'package:responsive_web/widgets/commonContainer.dart';

class Container4 extends StatefulWidget {
  const Container4({super.key});

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => MobileContainer4(),
      desktop: (BuildContext context) => DesketopContainer4(),
      tablet: (BuildContext context) => TabletContainer4(),
    );
  }

  Widget TabletContainer4() {
    return CommonContainerTablet(
        'FREE SOME COST',
        'Save cost\nfor you\nand family',
        'Tellus lacus morbi sagittuis lacus in, Amet nisl at macris at enim account',
        illustration2,
        true);
  }

  Widget MobileContainer4() {
    return CommonContainerMobile(
        'FREE SOME COST',
        'Save cost\nfor you\nand family',
        'Tellus lacus morbi sagittuis lacus in, Amet nisl at macris at enim account',
        illustration2);
  }

  Widget DesketopContainer4() {
    return CommonContainer(
        "FREE SOME COST",
        'Save cost\nfor you\nand family',
        'Tellus lacus morbi sagittuis lacus in, Amet nisl at macris at enim account',
        illustration2,
        true);
  }
}
