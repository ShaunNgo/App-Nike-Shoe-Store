import 'package:flutter/material.dart';
import 'package:ltddnc/components/admin_bar_graph.dart';
import 'package:ltddnc/components/admin_statistical_tile.dart';
import 'package:ltddnc/components/my_search_box.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  Widget build(BuildContext context) {
    List<double> weeklySummary = [
      40.40,
      20.50,
      42.42,
      50.50,
      95.20,
      88.99,
      90.10,
    ];
    var style = TextStyle(
        fontSize: 21,
        color: Theme.of(context).colorScheme.inversePrimary,
        fontFamily: 'BeVietnamPro',
        fontWeight: FontWeight.bold);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chào, Admin!',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'BeVietnamPro'),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '23 tháng 7, 2024',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            // fontSize: 24,
                            fontFamily: 'BeVietnamPro'),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context)
                              .colorScheme
                              .inversePrimary
                              .withOpacity(0.1),
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Icon(
                      Icons.notifications,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const SearchBox(),
              const SizedBox(height: 15),
              Text('Doanh thu', style: style),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                child: SizedBox(
                  height: 350,
                  child: AdminBarGraph(
                    weeklySummary: weeklySummary,
                  ),
                ),
              ),
              Text('Thống kê', style: style),
              const SizedBox(height: 15),
              const StatisticalTile(
                textTitle: 'Số lượng giày đã bán',
                textQuantity: '368',
                textDes: 'Tăng 23% so với tuần trước',
                linkImage: 'assets/images/shoe_box.png',
              ),
              const SizedBox(height: 15),
              const StatisticalTile(
                textTitle: 'Số lượng khách hàng mới',
                textQuantity: '453',
                textDes: 'Tăng 14% so với tuần trước',
                linkImage: 'assets/images/rating.png',
              ),
              const SizedBox(height: 15),
              const StatisticalTile(
                textTitle: 'Số lượng đơn hàng đã bán',
                textQuantity: '168',
                textDes: 'Tăng 23% so với tuần trước',
                linkImage: 'assets/images/checklist.png',
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
