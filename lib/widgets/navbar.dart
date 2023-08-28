import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';
import 'package:flutter_web/utils/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
        mobile: (context) => MobileNavBar(),
        desktop: (context) =>DesktopNavBar(),
    );
  }
// ====================== MOBILE ========================
  Widget MobileNavBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu),
          navLogo()
        ],
      ),
    );
  }
// ====================== DESKTOP ========================

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
              onPressed: (){},
              child: Text('Request a Demo'
                          ,style: TextStyle(color: AppColors.primary),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget navButton(String text){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        onPressed: (){},
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,

          ),
        )
        ,
      ),
    );
  }

  Widget navLogo() {
    return Container(
      width: 110,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/logo.png'))
      ),
    );
  }
}
