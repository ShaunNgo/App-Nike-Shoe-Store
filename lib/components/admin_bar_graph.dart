import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:ltddnc/data/models/bar_data.dart';

class AdminBarGraph extends StatelessWidget {
  final List weeklySummary;
  const AdminBarGraph({
    super.key,
    required this.weeklySummary,
  });

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
      sunAmount: weeklySummary[0],
      monAmount: weeklySummary[1],
      tueAmount: weeklySummary[2],
      wedAmount: weeklySummary[3],
      thurAmount: weeklySummary[4],
      firAmount: weeklySummary[5],
      satAmount: weeklySummary[6],
    );
    myBarData.initializeBarData();
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color:
                Theme.of(context).colorScheme.inversePrimary.withOpacity(0.1),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 25.0, right: 10, bottom: 25, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/bar_chart.png',
                      height: 20,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Tuần: ',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontFamily: 'BeVietnamPro',
                        // fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '202.250.000 ₫',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inverseSurface,
                        fontFamily: 'BeVietnamPro',
                        fontWeight: FontWeight.w600,
                        // fontSize: 15,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.keyboard_arrow_right,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: BarChart(
                BarChartData(
                  maxY: 100,
                  minY: 0,
                  gridData: const FlGridData(show: false),
                  borderData: FlBorderData(show: false),
                  titlesData: const FlTitlesData(
                    show: true,
                    topTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    rightTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                      showTitles: false,
                    )),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: getBottomTitles,
                      ),
                    ),
                  ),
                  barGroups: myBarData.barData
                      .map(
                        (data) => BarChartGroupData(
                          x: data.x,
                          barRods: [
                            BarChartRodData(
                              toY: data.y,
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                              width: 25,
                              borderRadius: BorderRadius.circular(4),
                              backDrawRodData: BackgroundBarChartRodData(
                                  show: true,
                                  toY: 100,
                                  color:
                                      Theme.of(context).colorScheme.tertiary),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget getBottomTitles(double value, TitleMeta meta) {
  // var context;
  var style = TextStyle(
    color: Colors.grey.shade600,
    fontWeight: FontWeight.bold,
    fontSize: 14,
    fontFamily: 'BeVietnamPro',
  );

  Widget text;
  switch (value.toInt()) {
    case 0:
      text = Text('T2', style: style);
      break;
    case 1:
      text = Text('T3', style: style);
      break;
    case 2:
      text = Text('T4', style: style);
      break;
    case 3:
      text = Text('T5', style: style);
      break;
    case 4:
      text = Text('T6', style: style);
      break;
    case 5:
      text = Text('T7', style: style);
      break;
    case 6:
      text = Text('CN', style: style);
      break;
    default:
      text = Text('', style: style);
      break;
  }
  return SideTitleWidget(axisSide: meta.axisSide, child: text);
}
