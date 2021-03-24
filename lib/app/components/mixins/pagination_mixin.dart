import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

mixin PaginationMixin<T> on GetLifeCycle {
  final pagingController = PagingController<int, T>(firstPageKey: 1);
}
