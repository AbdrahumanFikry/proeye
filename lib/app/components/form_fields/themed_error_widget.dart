import 'package:flutter/material.dart';

class ThemedErrorWidget extends StatelessWidget {
  final String error;
  const ThemedErrorWidget(
    this.error, {
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Text(
        error ?? '',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Theme.of(context).errorColor,
          fontSize: 12.0,
        ),
      ),
    );
  }
}
