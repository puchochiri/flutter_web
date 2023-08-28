import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:flutter_web/widgets/commonContainer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container4 extends StatefulWidget {
  const Container4({super.key});

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => MobileContainer4(),
      desktop: (context) => DesktopContainer4(),
    );
  }
// ====================== MOBILE ========================
  Widget MobileContainer4() {
    return CommonContainer(
        'FREE SOME COST',
        'Save-cost \nfor you\nand family',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accum',
        illustration2,
        true);
  }

// ====================== DESKTOP ========================
  Widget DesktopContainer4() {
    return CommonContainerMobile(
        'FREE SOME COST',
        'Save-cost \nfor you\nand family',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accum',
        illustration2);
  }
}
