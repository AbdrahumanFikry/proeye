import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:rxdart/rxdart.dart' as rx;

import 'emptyWidget.dart';
import 'form_fields/themed_text_form_field.dart';

class GenericFilteredPaginatedList<TKey, TVal> extends StatefulWidget {
  final TKey initialKey;
  final TextEditingController textFilterController;
  final void Function(PagingController<TKey, TVal> controller, TKey pageKey)
      pageRequestListener;
  final Widget Function(BuildContext context, TVal item, int index) itemBuilder;
  final Stream extraFilterStream;
  final Widget Function() filterDialogBuilder;
  final void Function(PagingController<TKey, TVal> controller) onControllerInit;
  final bool reverse;
  const GenericFilteredPaginatedList({
    Key key,
    this.initialKey,
    this.textFilterController,
    this.pageRequestListener,
    this.itemBuilder,
    this.extraFilterStream,
    this.filterDialogBuilder,
    this.onControllerInit,
    this.reverse = false,
  }) : super(key: key);
  @override
  _GenericFilteredPaginatedListState<TKey, TVal> createState() =>
      _GenericFilteredPaginatedListState<TKey, TVal>();
}

class _GenericFilteredPaginatedListState<TKey, TVal>
    extends State<GenericFilteredPaginatedList<TKey, TVal>> {
  PagingController<TKey, TVal> _pagingController;
  String latestFilter = "";
  final textStreamController = StreamController<String>.broadcast();
  void refreshList() {
    if (widget.textFilterController.text == latestFilter) {
      return;
    } else {
      latestFilter = widget.textFilterController.text;
      textStreamController.add(latestFilter);
    }
  }

  Stream<dynamic> get initTextStream async* {
    yield null;
    yield* textStreamController.stream
        .cast<dynamic>()
        .debounceTime(Duration(seconds: 1))
        .cast<dynamic>();
  }

  Stream<dynamic> get initExtraStream async* {
    yield null;
    yield* widget.extraFilterStream;
  }

  StreamSubscription _extraSub;
  @override
  void initState() {
    super.initState();
    _pagingController =
        PagingController<TKey, TVal>(firstPageKey: widget.initialKey);
    widget.textFilterController?.addListener(refreshList);
    _pagingController.addPageRequestListener(handlerReq);
    widget.onControllerInit?.call(_pagingController);
    Stream<dynamic> finalStream = initTextStream;
    if (widget.extraFilterStream != null) {
      finalStream = rx.Rx.combineLatest2<dynamic, dynamic, dynamic>(
        finalStream,
        initExtraStream,
        (_, __) {
          return null;
        },
      );
    }

    _extraSub = finalStream.listen((_) {
      _pagingController.refresh();
    });
  }

  void handlerReq(k) {
    widget.pageRequestListener?.call(_pagingController, k);
  }

  @override
  void dispose() {
    _extraSub.cancel();
    _pagingController.removePageRequestListener(handlerReq);
    //_pagingController.dispose();
    textStreamController.close();
    widget.textFilterController?.removeListener(refreshList);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final list = RefreshIndicator(
      onRefresh: () async {
        _pagingController.refresh();
      },
      child: PagedListView<TKey, TVal>(
        reverse: widget.reverse,
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<TVal>(
          itemBuilder: (context, item, index) {
            return widget.itemBuilder(context, item, index);
          },
          noItemsFoundIndicatorBuilder: (context) => EmptyWidget(),
        ),
      ),
    );
    if (widget.textFilterController == null &&
        widget.filterDialogBuilder == null) {
      return list;
    }
    return Column(
      children: [
        Row(
          children: [
            if (widget.textFilterController != null)
              Expanded(
                child: ThemedTextFormField.clean(
                  hintText: 'البحث...',
                  controller: widget.textFilterController,
                  borderRadius: 50.0,
                  maxLines: 1,
                  keyBoardType: TextInputType.text,
                  textAlignment: TextAlign.start,
                ),
              ),
            if (widget.filterDialogBuilder != null)
              IconButton(
                icon: Icon(
                  Icons.filter_alt,
                  color: ColorUtil.primaryColor,
                ),
                onPressed: () {
                  Get.dialog(Obx(() => widget.filterDialogBuilder()));
                },
              ),
          ],
        ),
        Expanded(
          child: list,
        ),
      ],
    );
  }
}
