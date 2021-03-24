import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/state_manager.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/components/loading.dart';
import 'package:pro_eye/app/modules/search/components/searchCard.dart';
import 'package:pro_eye/app/modules/search/controllers/search_controller.dart';
import 'package:pro_eye/app/services/appService.dart';

class SearchBody extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Placeholder();
    //   return Expanded(
    //     child: AppService.to.loading.value
    //         ? Loading()
    //         : AnimatedListHandler.builder(
    //             itemCount: controller.filterResultList.length,
    //             itemBuilder: (BuildContext context, int position) {
    //               final searchItem = controller.filterResultList[position];
    //               return AnimationConfiguration.staggeredList(
    //                 position: position,
    //                 duration: const Duration(milliseconds: 500),
    //                 child: SlideAnimation(
    //                   verticalOffset: 50.0,
    //                   child: FadeInAnimation(
    //                     child: SearchCard(
    //                       id: searchItem.taskId,
    //                       title: searchItem.title,
    //                       description: searchItem.description,
    //                       trailingColor: searchItem.trailingColor,
    //                     ),
    //                   ),
    //                 ),
    //               );
    //             },
    //           ),
    //   );
    // },
  }
}
