import 'package:Inventorio/models/theme_colors.dart';
import 'package:flutter/material.dart';

class EmployeeWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const EmployeeWidget({
    this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final heightRatio = deviceSize.height / 731;
    final widthRatio = deviceSize.width / 411;
    return Container(
      child: ListTile(
        leading: Container(
          height: 70 * heightRatio,
          width: 70 * widthRatio,
          child: Card(
            elevation: 2.5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: CustomText().mediumHeaderText('RR',
                  color: ThemeConstants().black, size: 24),
            ),
          ),
        ),
        title: CustomText()
            .mediumHeaderText('$title', size: 18, color: Colors.white),
        subtitle: CustomText().mediumHeaderText('$subtitle',
            size: 13, color: ThemeConstants().opaqueWhite),
      ),
    );
  }
}
