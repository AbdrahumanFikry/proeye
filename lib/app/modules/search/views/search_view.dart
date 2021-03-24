import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/appDirectionality.dart';
import 'package:pro_eye/app/components/form_fields/themed_text_form_field.dart';

import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/modules/search/components/searchBody.dart';
import 'package:pro_eye/app/modules/search/controllers/search_controller.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class SearchView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return AppDirectionality(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            GlobalAppBar(
              title: S.of(context).search,
              enableBack: true,
            ),
            Obx(
              () => Row(
                textDirection:
                    !AppUtil.isLtr ? TextDirection.ltr : TextDirection.rtl,
                children: [
                  const SizedBox(
                    width: 10.0,
                  ),
                  // if (controller.searchList.isNotEmpty &&
                  //     controller.searchList[0].searchType ==
                  //         SearchType.Projects)
                  //   CircleButton(
                  //     padding: const EdgeInsets.all(10.0),
                  //     onPressed: () {
                  //       controller.innerDrawerKey.currentState.toggle(
                  //         direction: InnerDrawerDirection.end,
                  //       );
                  //     },
                  //     child: SvgPicture.asset(
                  //       PathUtil.filterPathSVG,
                  //       color: ColorUtil.primaryColor,
                  //     ),
                  //   ),
                  Expanded(
                    child: ThemedTextFormField.clean(
                      controller: controller.textController,
                      onFieldSubmitted: (String value) {
                        controller.searchText.value = value;
                        controller.onSearchTextConfirmed();
                        controller.searchFocus?.unfocus();
                      },
                      onChanged: (String value) {
                        controller.searchText.value = value;
                        EasyDebounce.debounce(
                          'searchDebouncer',
                          Duration(milliseconds: 500),
                          () {
                            print('::::::::::::  Debounce  :::::::::::::');
                            controller.onSearchTextConfirmed();
                            controller.searchFocus?.unfocus();
                          },
                        );
                      },
                      borderRadius: 50.0,
                      //readOnly: AppService.to.loading.value,
                      hintText: S.of(context).search,
                      suffixWidget: Icon(
                        FontAwesomeIcons.search,
                        color: ColorUtil.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SearchBody(),
          ],
        ),
      ),
    );
  }
}
