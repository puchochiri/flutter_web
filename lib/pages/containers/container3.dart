import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:flutter_web/widgets/commonContainer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => MobileContainer3(),
      desktop: (context) => DesktopContainer3(),
    );
  }
// ====================== MOBILE ========================
  Widget MobileContainer3() {
    return CommonContainerMobile(
        'ALWAYS ONLINE',
        'Real-time \nsupport\nwith cloud',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accum',
        illustration1);
  }

// ====================== DESKTOP ========================
  Widget DesktopContainer3() {
    return CommonContainer(
        'ALWAYS ONLINE',
        'Real-time \nsupport\nwith cloud',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accum',
        illustration1,
        false);
  }
}
