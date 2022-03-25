import 'package:flutter/material.dart';
import 'package:wats_app/const.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'واستطيتكو',
            style: TextStyle(
              color: iWhite,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 20.0, height: 0.0),
          Icon(
            Icons.notification_add,
            color: iWhite,
          ),
        ],
      ),
      height: 100.0,
    );
  }
}
