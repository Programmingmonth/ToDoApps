import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StatisticsScreen extends StatefulWidget {
  @override
  _StatisticsScreenState createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF110022),
      appBar: AppBar(
        backgroundColor: Color(0xFF110022),
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildPeriodButton('Daily'),
            _buildPeriodButton('Weekly'),
            _buildPeriodButton('Monthly'),
            _buildPeriodButton('Yearly'),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          _buildLegend(),
          SizedBox(height: 20),
          _buildPieChart(),
          SizedBox(height: 20),
          _buildBarChart(),
        ],
      ),
    );
  }

  Widget _buildPeriodButton(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildLegend() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildLegendItem(Color(0xFF0099FF), 'Low'),
        _buildLegendItem(Color(0xFFFFC0CB), 'Much'),
        _buildLegendItem(Color(0xFF00FFCC), 'Very Much'),
      ],
    );
  }

  Widget _buildLegendItem(Color color, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            color: color,
          ),
          SizedBox(width: 4),
          Text(text, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  Widget _buildPieChart() {
    return Container(
      height: 200,
      child: PieChart(
        PieChartData(
          sections: [
            PieChartSectionData(
              color: Color(0xFF0099FF),
              value: 30,
              title: '',
            ),
            PieChartSectionData(
              color: Color(0xFFFFC0CB),
              value: 40,
              title: '',
            ),
            PieChartSectionData(
              color: Color(0xFF00FFCC),
              value: 30,
              title: '',
            ),
          ],
          borderData: FlBorderData(show: false),
        ),
      ),
    );
  }

  Widget _buildBarChart() {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: BarChart(
        BarChartData(
          barGroups: [
            _buildBarGroup(0, 5, 10, 15),
            _buildBarGroup(1, 6, 11, 17),
            _buildBarGroup(2, 7, 12, 20),
            _buildBarGroup(3, 8, 14, 22),
            _buildBarGroup(4, 5, 13, 18),
            _buildBarGroup(5, 7, 16, 23),
            _buildBarGroup(6, 6, 15, 21),
          ],
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(
            bottomTitles: SideTitles(
              showTitles: true,
              getTextStyles: (context, value) => const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              margin: 16,
              getTitles: (double value) {
                switch (value.toInt()) {
                  case 0:
                    return 'Sun';
                  case 1:
                    return 'Mon';
                  case 2:
                    return 'Tue';
                  case 3:
                    return 'Wed';
                  case 4:
                    return 'Thu';
                  case 5:
                    return 'Fri';
                  case 6:
                    return 'Sat';
                  default:
                    return '';
                }
              },
            ),
            leftTitles: SideTitles(showTitles: false),
          ),
        ),
      ),
    );
  }

  BarChartGroupData _buildBarGroup(int x, double y1, double y2, double y3) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          y: y1,
          colors: [Color(0xFF0099FF)],
        ),
        BarChartRodData(
          y: y2,
          colors: [Color(0xFFFFC0CB)],
        ),
        BarChartRodData(
          y: y3,
          colors: [Color(0xFF00FFCC)],
        ),
      ],
      showingTooltipIndicators: [0, 1, 2],
    );
  }
}
