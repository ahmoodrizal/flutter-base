import 'package:base_app/theme.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Second Page',
          style: blackTextStyle.copyWith(
            fontSize: 14,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
