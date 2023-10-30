import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_web/utils/constraints.dart';
import 'package:responsive_web/widgets/commonContainer.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => MobileContainer3(),
      desktop: (BuildContext context) => DesktopContainer3(),
      tablet: (BuildContext context) => TabletContainer3(),
    );
  }

  Widget TabletContainer3() {
    return CommonContainerTablet(
        'ALWAYS ONLINE',
        'Real-time \nsupport \nwith cloud',
        'Tellus lacus morbi sagittis lacus in, Amet nisl at \nmaruris enim account',
        illustration1,
        false);
  }

  Widget MobileContainer3() {
    return CommonContainerMobile(
        'ALWAYS ONLINE',
        'Real-time \nsupport \nwith cloud',
        'Tellus lacus morbi sagittis lacus in, Amet nisl at \nmaruris enim account',
        illustration1);
  }

  Widget DesktopContainer3() {
    return CommonContainer(
        'ALWAYS ONLINE',
        'Real-time \nsupport \nwith cloud',
        'Tellus lacus morbi sagittis lacus in, Amet nisl at \nmaruris enim account',
        illustration1,
        false);
  }
}
