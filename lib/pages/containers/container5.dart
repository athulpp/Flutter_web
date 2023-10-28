import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_web/utils/constraints.dart';
import 'package:responsive_web/widgets/commonContainer.dart';

class Container5 extends StatefulWidget {
  const Container5({super.key});

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => MobileContainer5(),
      desktop: (BuildContext context) => DesktopContainer5(),
    );
  }

  Widget MobileContainer5() {
    return CommonContainerMobile(
        'USE ANY TIME',
        'Use anytime \nWhen you \nneed',
        'Tellus lacus morbi sagittis lacus in, Amet nisl at \nmauris enim account',
        illustration3);
  }

  Widget DesktopContainer5() {
    return CommonContainer(
        'USE ANY TIME',
        'Use anytime \nWhen you \nneed',
        'Tellus lacus morbi sagittis lacus in, Amet nisl at \nmauris enim account',
        illustration3,
        false);
  }
}
