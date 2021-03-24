import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pro_eye/app/components/mixins/api_mixin.dart';
import 'package:pro_eye/app/components/mixins/busy_mixin.dart';
import 'package:pro_eye/app/components/mixins/text_filter_mixin.dart';
import 'package:proeye_api/model/technical_report_abstract_vm.dart';

class ProjectDetailsTechnicalReportsController extends GetxController
    with ApiMixin, BusyMixin, TextFilterMixin {
  final String projectId;

  ProjectDetailsTechnicalReportsController(this.projectId);

  PagingController<int, TechnicalReportAbstractVM> pagingController;

  Future<void> fetchTechnicalReports(
    PagingController<int, TechnicalReportAbstractVM> pagingController,
    int pageIndex,
  ) async {
    try {
      startBusy();
      final res = await request(
        api.getTechnicalReportsApi().v10ApiProjectsIdTechnicalReportsGet(
              projectId,
              pageIndex: pageIndex,
              pageSize: pageSize,
              filterStr: textFilter.text,
            ),
      );
      if (res.hasNextPage) {
        pagingController.appendPage(res.page.toList(), res.pageIndex + 1);
      } else {
        pagingController.appendLastPage(res.page.toList());
      }
      endBusySuccess();
    } catch (e) {
      endBusyError(e.toString(), showDialog: true);
    }
  }

  @override
  void onReady() {
    super.onReady();
  }
}
