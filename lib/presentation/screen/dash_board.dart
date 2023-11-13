import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashBoard extends StatefulWidget {
  static const DASHBOARD = "dashboard";
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final List<ChartData>? chartData = [
    ChartData(
      'Moving',
      25,
      const Color(0xff00c5e2),
    ),
    ChartData('Stopped', 38, const Color(0xfffa8e4a)),
    ChartData('Device Offline', 34, const Color(0xff8167cd)),
    ChartData('No Device', 52, const Color(0xff57e2c6)),
    ChartData('Expired', 40, const Color(0xff1c7b84))
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 0.75.sh,
        width: MediaQuery.of(context).size.width,
        color: Colors.yellow.shade50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 0.7.sh,
              width: 1.sh,
              child: SfCircularChart(
                  title: ChartTitle(
                      alignment: ChartAlignment.near,
                      text: "Fleet Status",
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20.sp,
                      )),
                  legend: Legend(
                      isVisible: true,
                      toggleSeriesVisibility: false,
                      position: LegendPosition.bottom,
                      overflowMode: LegendItemOverflowMode.wrap,
                      itemPadding: BorderSide.strokeAlignCenter,
                      legendItemBuilder:
                          (String name, dynamic series, point, int index) {
                        double f = point.y;
                        int m = f.toInt();

                        return SizedBox(

                            //height: 40.h,
                            width: 0.4.sw,
                            child: Row(
                              children: <Widget>[
                                Text(
                                  m.toString(),
                                  style: TextStyle(
                                      color: point.color,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16.sp),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  name.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.sp),
                                )
                              ],
                            ));
                      }),
                  annotations: <CircularChartAnnotation>[
                    CircularChartAnnotation(
                        widget: Text('1\nAll',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: const Color.fromRGBO(0, 0, 0, 0.5),
                                fontSize: 18.r),),),
                  ],
                  series: <CircularSeries>[
                    // Renders doughnut chart
                    DoughnutSeries<ChartData, String>(
                        dataSource: chartData,
                        pointColorMapper: (ChartData data, _) => data.color,
                        xValueMapper: (ChartData data, _) => data.x,
                        yValueMapper: (ChartData data, _) => data.y)
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
