import 'package:Inventorio/models/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeConstants().black,
      child: Drawer(
        child: Container(
          color: ThemeConstants().black,
          padding: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              SvgPicture.asset('assets/icons/tower.svg'),
            ],
          ),
        ),
      ),
    );
  }
}
