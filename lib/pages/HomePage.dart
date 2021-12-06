import 'package:base_app/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Home Page',
          style: blackTextStyle.copyWith(
            fontSize: 14,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
