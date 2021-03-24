// import 'package:charts_flutter/flutter.dart' as charts;
import 'package:get/get.dart';
import 'package:pro_eye/app/components/mixins/api_mixin.dart';
import 'package:pro_eye/app/components/mixins/busy_mixin.dart';
import 'package:pro_eye/app/models/analyticsChart.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:proeye_api/model/stats_object.dart';

class AnalysisController extends GetxController with ApiMixin, BusyMixin {
  // final List<Analytics> data = [
  //   Analytics(
  //     year: "2014",
  //     financial: 250,
  //     color: charts.ColorUtil.fromDartColor(ColorUtil.primaryColor),
  //   ),
  //   Analytics(
  //     year: "2015",
  //     financial: 300,
  //     color: charts.ColorUtil.fromDartColor(ColorUtil.primaryColor),
  //   ),
  //   Analytics(
  //     year: "2016",
  //     financial: 100,
  //     color: charts.ColorUtil.fromDartColor(ColorUtil.primaryColor),
  //   ),
  //   Analytics(
  //     year: "2017",
  //     financial: 450,
  //     color: charts.ColorUtil.fromDartColor(ColorUtil.primaryColor),
  //   ),
  //   Analytics(
  //     year: "2018",
  //     financial: 630,
  //     color: charts.ColorUtil.fromDartColor(ColorUtil.primaryColor),
  //   ),
  //   Analytics(
  //     year: "2019",
  //     financial: 1000,
  //     color: charts.ColorUtil.fromDartColor(ColorUtil.primaryColor),
  //   ),
  //   Analytics(
  //     year: "2020",
  //     financial: 400,
  //     color: charts.ColorUtil.fromDartColor(ColorUtil.primaryColor),
  //   ),
  // ];
  final stats = Rx<StatsObject>();

  final isPercentage = true.obs;

  @override
  void onReady() {
    super.onReady();
    fetchStats();
  }

  Future<void> fetchStats() async {
    try {
      startBusy();
      stats.value =
         await request(api.getStatsApi().v10ApiGetProjectsStatsGet());

      // var testStats = StatsObjectBuilder()
      //   ..allProjects = 20
      //   ..acceptedProjects = 18
      //   ..completedProjects = 6
      //   ..incompleteProjects = 12
      //   ..finalWarrantyProjects = 2
      //   ..initialWarrantyProjects = 2
      //   ..outsideFinalWarrantyProjects = 2
      //   ..refusedProjects = 2;
      // stats.value = testStats.build();
      endBusySuccess();
    } catch (e) {
      endBusyError(e, showDialog: true);
    }
  }
}
