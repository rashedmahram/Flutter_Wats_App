import 'package:flutter/material.dart';
import 'package:wats_app/const.dart';

class WhiteTextButton extends StatelessWidget {
  // variables
  final String title;
  final func;
  // constructor
  const WhiteTextButton({
    Key? key,
    required this.title,required this.func,
  }) : super(key: key);

  // build method
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: func,
      child: Text(title,style: TextStyle(color: iBlack,fontSize: 14,fontWeight: FontWeight.w700),),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(iWhite),
      ),
    );
  }
}
