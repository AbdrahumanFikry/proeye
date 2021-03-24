import 'dart:async';

import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pro_eye/app/components/filtered_paginated_list_generic.dart';

class IntFilteredPaginatedList<T> extends GenericFilteredPaginatedList<int, T> {
  const IntFilteredPaginatedList({
    Key key,
    void Function(PagingController<int, T> controller) onControllerInit,
    TextEditingController textFilterController,
    @required
        Widget Function(BuildContext context, T item, int index) itemBuilder,
    void Function(PagingController<int, T> controller, int pageKey)
        pageRequestListener,
    Stream extraFilterStream,
    Widget Function() filterDialogBuilder,
    bool reverse = false,
  }) : super(
          key: key,
          textFilterController: textFilterController,
          initialKey: 1,
          extraFilterStream: extraFilterStream,
          filterDialogBuilder: filterDialogBuilder,
          itemBuilder: itemBuilder,
          onControllerInit: onControllerInit,
          pageRequestListener: pageRequestListener,
          reverse: reverse,
        );
}
