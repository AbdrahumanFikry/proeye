import 'package:flutter/material.dart';

class LabeledRadio extends StatelessWidget {
  const LabeledRadio({
    this.label,
    this.padding = EdgeInsets.zero,
    this.groupValue,
    this.value,
    this.onChanged,
    this.color,
  });

  final String label;
  final Color color;
  final EdgeInsets padding;
  final bool groupValue;
  final bool value;
  final void Function(bool newVal) onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (value != groupValue) onChanged(value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Radio<bool>(
                groupValue: groupValue,
                value: value,
                onChanged: onChanged,
              ),
            ),
            Text(
              label,
              style: TextStyle(color: color),
            ),
          ],
        ),
      ),
    );
  }
}
