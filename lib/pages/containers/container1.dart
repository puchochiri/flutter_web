import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => MobileContainer1(),
      desktop: (context) => DesktopContainer1(),
    );
  }
// ====================== MOBILE ========================
  Widget MobileContainer1() {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Column(
        children: [

          Container(
            height: w!/1.2,
            width: w!/1.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(illustration1), fit: BoxFit.contain),
            ),
          ),
          SizedBox(height: 20,),

          Text(
            'Track your  \nExpenses to \nSave Money',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: w! / 10,
                fontWeight: FontWeight.bold,
                height: 1.2),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Helps you to organize \nyour income and expenses',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 45,
            child: ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.primary)),
                onPressed: () {},
                icon: Icon(Icons.arrow_drop_down),
                label: Text('Try free Demo')),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '-Web, iOs and Android',
            style:
                TextStyle(color: Colors.grey.shade400, fontSize: h! / 50),
          ),
          SizedBox(
            height: 30,
          )

        ],
      ),
    );
  }

// ====================== DESKTOP ========================
  Widget DesktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Row(
        children: [
          Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Track your  \nExpenses to \nSave Money',
                  style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Helps you to organize your income and expenses',
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 20),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      height: 45,
                      child: ElevatedButton.icon(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(AppColors.primary)),
                          onPressed: () {},
                          icon: Icon(Icons.arrow_drop_down),
                          label: Text('Try free Demo')),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '-Web, iOs and Android',
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
          )),
          Expanded(
            child: Container(
              height: 530,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(illustration1), fit: BoxFit.contain),
              ),
            ),
          )
        ],
      ),
    );
  }
}
