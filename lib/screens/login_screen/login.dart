import 'package:flutter/material.dart';

import 'package:wats_app/const.dart';
import 'package:wats_app/widget/app_bar/logo_appbar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final throwShotAway;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(),
      backgroundColor: iBlack,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Strings.login_header,
                  style:const TextStyle(
                    color: iWhite,
                    fontSize: 45,
                  ),
                ),
                Text(
                  Strings.login_sub_header,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: iWhite,
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 0.0, height: 20.0),
                Column(
                  children: [
                    LoginInput(
                      hintText: "البريد الالكتروني",
                      labelText: "ادخل ايميلك ",
                      hintTextSize: 14,
                      SuffixIcon: Icons.email, textSize: 24,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    LoginInput(
                      hintText: "كلمة السر",
                      hintTextSize: 14,
                      SuffixIcon: Icons.password,
                      labelText: 'ادخل كلمة السر',
                       textSize: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Theme(
                          data: ThemeData(
                            splashColor: Colors.black,
                            unselectedWidgetColor: iWhite,
                          ),
                          child: Checkbox(
                            value: true,
                            onChanged: (bool? newValue) {},
                          ),
                        ),
                        Text(
                          Strings.login_remember_me_text,
                          style: TextStyle(color: iWhite,fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: iBlack,
                          borderRadius: BorderRadius.circular(8)),
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(iWhite),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.login_outlined, color: iBlack),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              Strings.login_btn,
                              style: TextStyle(color: iBlack),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 0.0, height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Strings.login_have_acount,
                          style: TextStyle(color: iWhite),
                        ),
                        SizedBox(width: 5, height: 0.0),
                        Text(
                          Strings.login_new_acount,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: iWhite),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginInput extends StatelessWidget {
  late double textSize = 12, hintTextSize;
  late String hintText, labelText;
  late IconData SuffixIcon;
  LoginInput({
    Key? key,
    required this.textSize,
    required this.hintTextSize,
    required this.hintText,
    required this.labelText,
    required this.SuffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Theme.of(context).cursorColor,
      style: TextStyle(
        fontSize: textSize,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        hintStyle: TextStyle(fontSize: hintTextSize, color: iWhite),
        fillColor: Colors.white,
        filled: true,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: iWhite),
        ),
        suffixIcon: Icon(SuffixIcon),
      ),
    );
  }
}

class LoginInputTilte extends StatelessWidget {
  const LoginInputTilte({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.email),
        Text(Strings.login_mail_text),
      ],
    );
  }
}

///
/*

              // Title
              Text(Strings.login_header,
                  style: Theme.of(context).textTheme.headline4),

              // subtitle
              Text(Strings.login_sub_header,
                  style: Theme.of(context).textTheme.headline6),

              // input [ email ]
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.email),
                      Text(Strings.login_mail_text),
                    ],
                  ),
                  TextField(
                    style:const TextStyle(fontSize: 14),
                    decoration: InputDecoration(
                      hintText: Strings.login_email_hint,
                      hintStyle: const TextStyle(fontSize: 16),
                      border:const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),),
                      
                    ),
                  ),
                  
                  Row(
                    children: [
                      Icon(Icons.email),
                      Text(Strings.login_mail_text),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: Strings.login_password_hint,
                      hintStyle: const TextStyle(fontSize: 16),
                    ),
                  ),
                  
                  
                ],
              )
              // input [ password ]

              // remember me

              // login btn

              // Register link
*/
