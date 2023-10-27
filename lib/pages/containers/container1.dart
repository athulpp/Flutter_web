import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_web/utils/colors.dart';

import '../../utils/constraints.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer1(),
      desktop: DesktopContainer1(),
      tablet: DesktopContainer1(),
    );
  }

  Widget TabletContainer() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 10),
      child: Row(
        children: [
          Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Track your \nExpense to \nSave Money',
                  style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Helps you to organize your income and expenses',
                  style: TextStyle(
                      color: Colors.grey.shade400, fontSize: w! * 0.02),
                ),
                SizedBox(
                  height: 20,
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
                          label: Text('Try free demo')),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '-Web,iOs, and Android',
                      style: TextStyle(
                          color: Colors.grey.shade400, fontSize: w! * 0.02),
                    )
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
                    image: AssetImage(illustration1), fit: BoxFit.contain)),
          ))
        ],
      ),
    );
  }

  Widget MobileContainer1() {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: w! / 1.2,
            width: w! / 1.2,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(illustration1), fit: BoxFit.contain)),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Track your \nExpense to \nSave Money',
            style: TextStyle(
                fontSize: w! / 10, fontWeight: FontWeight.bold, height: 1.2),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Helps you to organize \nyour income and expenses',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey.shade400, fontSize: w! * 0.04),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 45,
            child: ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.primary)),
                onPressed: () {},
                icon: Icon(Icons.arrow_drop_down),
                label: Text('Try free demo')),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '-Web,iOs, and Android',
            style: TextStyle(color: Colors.grey.shade400, fontSize: w! * 0.02),
          ),
        ],
      ),
    );
  }

  Widget DesktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 20, vertical: 10),
      child: Row(
        children: [
          Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Track your \nExpense to \nSave Money',
                  style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Helps you to origanize your icome and expenses',
                  style: TextStyle(
                      color: Colors.grey.shade400, fontSize: w! * 0.02),
                ),
                SizedBox(
                  height: 20,
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
                          label: Text('Try free demo')),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '-Web,iOs, and Android',
                      style: TextStyle(
                          color: Colors.grey.shade400, fontSize: w! * 0.015),
                    )
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
                    image: AssetImage(illustration1), fit: BoxFit.contain)),
          ))
        ],
      ),
    );
  }
}
