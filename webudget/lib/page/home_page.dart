import 'pie_chart_page.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class ChartpieHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: PageView(
            children: [
              PieChartPage(),
            ],
          ),
        ),
      );
}
