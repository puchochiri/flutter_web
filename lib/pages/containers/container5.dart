import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:flutter_web/widgets/commonContainer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container5 extends StatefulWidget {
  const Container5({super.key});

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => MobileContainer5(),
      desktop: (context) => DesktopContainer5(),
    );
  }
// ====================== MOBILE ========================
  Widget MobileContainer5() {
    return CommonContainer(
        'USE ANY TIME',
        'Use anytime \nwhen you\n',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accum',
        illustration3,
        true);  }

// ====================== DESKTOP ========================
  Widget DesktopContainer5() {
    return CommonContainerMobile(
        'USE ANY TIME',
        'Use anytime \nwhen you\n',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accum',
        illustration3);
  }
}
