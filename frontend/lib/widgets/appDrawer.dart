import 'package:Inventorio/models/theme_colors.dart';
import 'package:Inventorio/screens/employees_screen.dart';
import 'package:Inventorio/screens/transactions_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final heightRatio = deviceSize.height / 731;
    final widthRatio = deviceSize.width / 411;
    return Container(
      color: ThemeConstants().black,
      child: Drawer(
        child: Container(
          color: ThemeConstants().black,
          padding: EdgeInsets.only(top: 60 * heightRatio),
          child: Column(
            children: [
              Container(
                height: 100 * heightRatio,
                child: SvgPicture.asset('assets/icons/logo.svg'),
              ),
              SizedBox(
                height: 40 * heightRatio,
              ),
              customListTile(
                  context: context,
                  heightRatio: heightRatio,
                  widthRatio: widthRatio,
                  title: 'Employees',
                  route: EmployeeScreen.routeName,
                  svgAsset: 'assets/icons/employees.svg'),
              customListTile(
                  route: TransactionsScreen.routeName,
                  context: context,
                  heightRatio: heightRatio,
                  widthRatio: widthRatio,
                  title: 'Transactions',
                  svgAsset: 'assets/icons/transactions.svg'),
              customListTile(
                  context: context,
                  heightRatio: heightRatio,
                  widthRatio: widthRatio,
                  title: 'Settings',
                  svgAsset: 'assets/icons/settings.svg'),
              Container(
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
            ],
          ),
        ),
      ),
    );
  }
}

Widget customListTile({
  String svgAsset,
  String title,
  double heightRatio,
  double widthRatio,
  String route,
  BuildContext context,
}) {
  return Column(
    children: [
      ListTile(
        onTap: () {
          Navigator.of(context).pushReplacementNamed('$route');
        },
        leading: Container(
          height: 40 * heightRatio,
          width: 40 * widthRatio,
          margin: EdgeInsets.only(left: 15 * widthRatio),
          child: SvgPicture.asset('$svgAsset'),
        ),
        title: Container(
          margin: EdgeInsets.only(left: widthRatio * 10),
          child: CustomText().mediumHeaderText('$title', size: 20),
        ),
      ),
      SizedBox(
        height: 10 * heightRatio,
      )
    ],
  );
}
