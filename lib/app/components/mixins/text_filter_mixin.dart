import 'package:flutter/cupertino.dart';

mixin TextFilterMixin<T> {
  final textFilter = TextEditingController();
  int get pageSize => 10;
}
