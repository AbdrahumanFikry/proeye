import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';

class SearchController extends GetxController {
  TextEditingController textController = TextEditingController();
  final isEmpty = false.obs;
  final searchText = ''.obs;
  final List searchList;
  final filterResultList = [].obs;
  FocusNode searchFocus;

  SearchController(this.searchList);

  static SearchController get to => Get.find();

  @override
  void onReady() {
    super.onReady();
    filterResultList.clear();
    filterResultList.assignAll(searchList);
    print("Search list length : ${searchList.length}");
  }

  void onSearchTextConfirmed() {
    if (textController.text.isNotEmpty) {
      filterResultList.clear();
      fetchFilterResult();
    } else {
      filterResultList.assignAll(searchList);
    }
  }

  Future<void> fetchFilterResult() async {
    //AppService.to.startNewService();
    try {
      searchList.forEach((element) {
        if (element.title.contains(searchText.value) ||
            element.description.contains(searchText.value)) {
          filterResultList.add(element);
        }
      });
    } catch (error) {
      AppUtil.showAlertDialog(body: error.toString());
    }
    //AppService.to.endService();
  }
}
