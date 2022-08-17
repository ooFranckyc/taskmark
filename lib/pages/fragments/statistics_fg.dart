import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:taskmark/widgets/appbar.dart';
import 'package:taskmark/widgets/statisk_model_card.dart';
import 'package:fl_chart/fl_chart.dart';

class StatisticsFragment extends StatefulWidget {
  const StatisticsFragment({Key? key}) : super(key: key);

  @override
  State<StatisticsFragment> createState() => _StatisticsFragmentState();
}

class _StatisticsFragmentState extends State<StatisticsFragment> {
  List<Color> gradientColors = [
    const Color(0xff3A88FC),
    const Color(0xffE2ECFA),
  ];

  bool showAvg = false;

  final TextStyle tableTextStyleRow =
      const TextStyle(fontSize: 15, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: taskAppbar('Statistik', context),
      backgroundColor: const Color(0xffFAFAFA),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 160,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                    border: BorderDirectional(
                        top: BorderSide(color: Colors.grey.shade300, width: 1),
                        bottom:
                            BorderSide(color: Colors.grey.shade300, width: 1))),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    StatistikCard(
                        title: "Sales",
                        icon: Icons.pin_end_rounded,
                        currentPrice: 390.540,
                        backupPrice: 50.50,
                        isSolved: false,
                        word: "than last day"),
                    StatistikCard(
                        title: "Income",
                        icon: Icons.monetization_on,
                        currentPrice: 460.293,
                        backupPrice: 5.610,
                        isSolved: true,
                        word: "than last day"),
                    StatistikCard(
                        title: "Week-end",
                        icon: Icons.pin_end_rounded,
                        currentPrice: 390.540,
                        backupPrice: 10.57,
                        isSolved: false,
                        word: "than last product"),
                  ],
                )),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Overview",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w400)),
                  const SizedBox(height: 20),
                  tabBar(),
                  const SizedBox(height: 10),
                  // chart
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // chart ui insider
                      SizedBox(
                        width: double.infinity,
                        height: 250,
                        child: Stack(
                          children: [
                            AspectRatio(
                              aspectRatio: 1.70,
                              child: Container(
                                // height: 250,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(18),
                                    ),
                                    color: Colors.transparent),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 18.0,
                                      left: 12.0,
                                      top: 24,
                                      bottom: 10),
                                  child: LineChart(
                                    swapAnimationCurve:
                                        Curves.fastLinearToSlowEaseIn,
                                    showAvg ? avgData() : mainData(),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 60,
                              height: 34,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    showAvg = !showAvg;
                                  });
                                },
                                child: Text(
                                  'avg',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: showAvg
                                          ? Colors.black.withOpacity(0.5)
                                          : Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // end ui chart
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Recent Order",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18),
                            ),
                            Text(
                              "See more",
                              style: TextStyle(
                                  color: Color(0xff3A88FC),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      // table widget content list :
                      Table(
                        children: [
                          // table title row section
                          TableRow(children: [
                            Text("Product Name", style: tableTextStyleRow),
                            Align(
                                alignment: Alignment.center,
                                child: Text("Date", style: tableTextStyleRow)),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Price",
                                style: tableTextStyleRow,
                              ),
                            ),
                            Align(
                                alignment: Alignment.center,
                                child:
                                    Text("Payement", style: tableTextStyleRow)),
                          ]),
                          // please complet this table 😒👌👍
                          // task build the column with your information
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff68737d),
      fontWeight: FontWeight.w400,
      fontSize: 13,
    );
    Widget text;
    switch (value.toInt()) {
      case 2:
        text = const Text('MAR', style: style);
        break;
      case 5:
        text = const Text('JUN', style: style);
        break;
      case 8:
        text = const Text('SEP', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 8.0,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff67727d),
      fontWeight: FontWeight.w400,
      fontSize: 13,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '10K';
        break;
      case 3:
        text = '30k';
        break;
      case 5:
        text = '50k';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 0,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 0,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 0)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 4),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: LineTouchData(enabled: true),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        verticalInterval: 1,
        horizontalInterval: 1,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 0,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 0,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: bottomTitleWidgets,
            interval: 1,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
            interval: 1,
          ),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
          show: false,
          border: Border.all(color: const Color(0xff37434d), width: 0)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3.44),
            FlSpot(2.6, 3.44),
            FlSpot(4.9, 3.44),
            FlSpot(6.8, 3.44),
            FlSpot(8, 3.44),
            FlSpot(9.5, 3.44),
            FlSpot(11, 3.44),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: [
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          barWidth: 1,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ],
    );
  }

  int currentIndex = 0;
  Widget tabBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Bounce(
          duration: const Duration(milliseconds: 180),
          onPressed: () {
            setState(() {
              currentIndex = 0;
            });
          },
          child: Container(
            width: 65,
            height: 38,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: currentIndex == 0
                    ? Border.all(width: 1, color: Colors.grey.shade300)
                    : Border.all(width: 0, color: Colors.transparent),
                borderRadius: BorderRadius.circular(12)),
            child: const Text(
              "Days",
              style: TextStyle(color: Colors.black38, fontSize: 12),
            ),
          ),
        ),
        Bounce(
          duration: const Duration(milliseconds: 180),
          onPressed: () {
            setState(() {
              currentIndex = 1;
            });
          },
          child: Container(
            width: 65,
            height: 38,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: currentIndex == 1
                    ? Border.all(width: 1, color: Colors.grey.shade300)
                    : Border.all(width: 0, color: Colors.transparent),
                borderRadius: BorderRadius.circular(12)),
            child: const Text(
              "Week",
              style: TextStyle(color: Colors.black38, fontSize: 12),
            ),
          ),
        ),
        Bounce(
          duration: const Duration(milliseconds: 180),
          onPressed: () {
            setState(() {
              currentIndex = 2;
            });
          },
          child: Container(
            width: 65,
            height: 38,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: currentIndex == 2
                    ? Border.all(width: 1, color: Colors.grey.shade300)
                    : Border.all(width: 0, color: Colors.transparent),
                borderRadius: BorderRadius.circular(12)),
            child: const Text(
              "Month",
              style: TextStyle(color: Colors.black38, fontSize: 12),
            ),
          ),
        ),
        Bounce(
          duration: const Duration(milliseconds: 180),
          onPressed: () {
            setState(() {
              currentIndex = 3;
            });
          },
          child: Container(
            width: 70,
            height: 38,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: currentIndex == 3
                    ? Border.all(width: 1, color: Colors.grey.shade300)
                    : Border.all(width: 0, color: Colors.transparent),
                borderRadius: BorderRadius.circular(12)),
            child: const Text(
              "Year",
              style: TextStyle(color: Colors.black38, fontSize: 12),
            ),
          ),
        ),
        // fake button
        Bounce(
          duration: const Duration(milliseconds: 180),
          onPressed: () {
            setState(() {
              // code
            });
          },
          child: Container(
              width: 110,
              height: 45,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(CupertinoIcons.creditcard),
                  SizedBox(width: 1),
                  Text("Sales"),
                  SizedBox(width: 1),
                  Icon(Icons.keyboard_arrow_down),
                ],
              )),
        ),
      ],
    );
  }
}
