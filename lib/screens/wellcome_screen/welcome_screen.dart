import 'package:flutter/material.dart';
import 'package:wats_app/const.dart';
import 'package:wats_app/core/routes.dart';
import 'package:wats_app/screens/login_screen/widgets/logo.dart';
import 'package:wats_app/screens/login_screen/widgets/slugan.dart';
import 'package:wats_app/screens/login_screen/widgets/white_txt_btn.dart';
import 'package:wats_app/widget/app_bar/logo_appbar.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(),
      backgroundColor: iBlack,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: ipadding * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            const LoginLogo(),
            const LoginSlugan(),
            SizedBox(width: 0, height: ipadding * 4),
            WhiteTextButton(
              title: "تسجيل دخول",
              func: () {
                Navigator.pushNamed(context, AppRoutes.Login.name!);
                //  Navigator.pushNamed(context, '/about');

              },
            ),
            WhiteTextButton(
              title: "انشاء حساب",
              func: () {},
            ),
            const Spacer(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
