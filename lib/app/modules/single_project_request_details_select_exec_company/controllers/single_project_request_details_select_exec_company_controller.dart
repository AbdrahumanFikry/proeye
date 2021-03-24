import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pro_eye/app/components/mixins/api_mixin.dart';
import 'package:pro_eye/app/components/mixins/busy_mixin.dart';
import 'package:pro_eye/app/components/mixins/text_filter_mixin.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:proeye_api/model/execution_company_view_model.dart';

class SingleProjectRequestDetailsSelectExecCompanyController
    extends GetxController with BusyMixin, ApiMixin, TextFilterMixin {
  Future<void> addNewExecutionCompany() async {
    final agency = await Get.toNamed(Routes.ADD_NEW_EXECUTION_AGENCY)
        as ExecutionCompanyViewModel;
    if (agency != null) {
      Get.back(result: agency);
    }
  }

  void fetchCompanies(
    PagingController<int, ExecutionCompanyViewModel> controller,
    int pageKey,
  ) async {
    final res = await request(
      api.getCompaniesApi().v10ApiCompaniesExecutionGet(
            textFilter: textFilter.text,
            isVerified: true,
            pageIndex: pageKey,
            pageSize: pageSize,
          ),
    );
    if (res.hasNextPage) {
      controller.appendPage(res.page.toList(), pageKey + 1);
    } else {
      controller.appendLastPage(res.page.toList());
    }
  }
}
