import 'package:Inventorio/models/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  static const routeName = '/login-screen';

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final heightRatio = deviceSize.height / 731;
    final widthRatio = deviceSize.width / 411;
    return Scaffold(
      backgroundColor: ThemeConstants().black,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 150 * heightRatio),
          child: Center(
            child: Form(
              child: Column(
                children: [
                  SvgPicture.asset('assets/icons/tower.svg'),
                  Container(
                    margin: EdgeInsets.only(top: 66 * heightRatio),
                    // height: 80 * heightRatio,
                    width: 310 * widthRatio,
                    child: TextFormField(
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      enableSuggestions: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        hintText: 'Employer ID',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Container(
                    //color: Colors.white,
                    margin: EdgeInsets.only(top: 40 * heightRatio),
                    // height: 80 * heightRatio,
                    width: 310 * widthRatio,
                    child: TextFormField(
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      enableSuggestions: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Container(
                    height: 50 * heightRatio,
                    width: 186 * widthRatio,
                    margin: EdgeInsets.only(top: 50 * heightRatio),
                    child: RaisedButton(
                      onPressed: () {},
                      child: CustomText().mediumHeaderText('Login',
                          color: ThemeConstants().black, size: 30),
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
