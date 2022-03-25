import 'package:flutter/material.dart';

import '../../const.dart';

AppBar myAppbar() {
  return AppBar(
    backgroundColor: iBlack,
    leading: const Text(
      'واستطيتكو',
      style: TextStyle(fontSize: 16),
    ),
    leadingWidth: ipadding * 13,
  );
}
