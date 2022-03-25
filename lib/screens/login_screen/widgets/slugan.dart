import 'package:flutter/material.dart';
import 'package:wats_app/const.dart';

class LoginSlugan extends StatelessWidget {
  const LoginSlugan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'اشتري وبيع ع النت وانت مطمن علي فلوسك من خلالنا',
      style: TextStyle(
        color: iWhite,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
