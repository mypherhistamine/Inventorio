import 'package:Inventorio/models/theme_colors.dart';
import 'package:Inventorio/widgets/appDrawer.dart';

import 'package:Inventorio/widgets/transactionWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionsScreen extends StatelessWidget {
  static const routeName = '/transactions-screen';
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final heightRatio = deviceSize.height / 731;
    final widthRatio = deviceSize.width / 411;
    return Scaffold(
      drawer: AppDrawer(),
      backgroundColor: ThemeConstants().blue,
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
          title: Center(child: CustomText().header('Transactions')),
          backgroundColor: ThemeConstants().black,
          flexibleSpace: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 140 * heightRatio),
                width: 353 * widthRatio,
                height: 440 * heightRatio,
                child: NotificationListener<OverscrollIndicatorNotification>(
                  // ignore: missing_return
                  onNotification: (overscroll) {
                    overscroll.disallowGlow();
                  },
                  child: ListView.builder(
                    itemBuilder: (ctx, i) {
                      return TransactionItemWidget(
                        size: deviceSize,
                      );
                    },
                    itemCount: 5,
                  ),
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
                color: Colors.white,
                onPressed: () {},
                child: Icon(
                  Icons.add,
                  size: 50,
                  color: ThemeConstants().blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
