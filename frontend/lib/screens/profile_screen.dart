import 'package:Inventorio/models/theme_colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile-screen';
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final heightRatio = deviceSize.height / 731;
    final widthRatio = deviceSize.width / 411;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(589.0 * heightRatio),
        child: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            ),
          ),
          elevation: 0,
          title: Center(child: CustomText().header('Profile')),
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
              )
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 2,
            width: widthRatio * 71,
            color: ThemeConstants().black,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(bottom: 5),
              height: heightRatio * 54,
              width: widthRatio * 160,
              child: RaisedButton(
                elevation: 0,
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
