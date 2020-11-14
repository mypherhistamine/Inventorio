import 'package:Inventorio/models/theme_colors.dart';
import 'package:Inventorio/screens/profile_screen.dart';
import 'package:Inventorio/widgets/appDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmployeeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final heightRatio = deviceSize.height / 731;
    final widthRatio = deviceSize.width / 411;
    return Scaffold(
      drawer: AppDrawer(),
      backgroundColor: ThemeConstants().pink,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(589.0 * heightRatio),
        child: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: SvgPicture.asset('assets/icons/drawer_Icon.svg'),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: SvgPicture.asset('assets/icons/inventory.svg'),
            )
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            ),
          ),
          elevation: 0,
          title: Center(child: CustomText().header('Employees')),
          backgroundColor: ThemeConstants().black,
          flexibleSpace: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ThemeConstants().grey),
                margin: EdgeInsets.only(top: 118 * heightRatio),
                width: 204 * widthRatio,
                height: 200 * heightRatio,
              ),
              Container(
                padding: EdgeInsets.only(top: heightRatio * 15),
                child: CustomText().header('Rahul K'),
              ),
              Container(
                padding: EdgeInsets.only(top: heightRatio * 13),
                child: CustomText().mediumHeaderText('Sr Employee'),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 30 * heightRatio,
                    bottom: 20 * heightRatio,
                    left: 15 * widthRatio,
                    right: 15 * widthRatio),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText().mediumHeaderText('DoJ: 26/05/2020'),
                    CustomText().mediumHeaderText('Transactions: 69')
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 22 * heightRatio),
                height: 71 * heightRatio,
                width: 322 * widthRatio,
                child: RaisedButton(
                  elevation: 8,
                  color: ThemeConstants().pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  onPressed: () {},
                  child: CustomText().semiBoldText('Transactions', 30),
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 2.2,
            width: widthRatio * 71,
            color: Colors.white,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(bottom: 5),
              height: heightRatio * 54,
              width: widthRatio * 160,
              child: RaisedButton(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                color: ThemeConstants().grey,
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.exit_to_app),
                    CustomText().mediumText('Log Out'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
