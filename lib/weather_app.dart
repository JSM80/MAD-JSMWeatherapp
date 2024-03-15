import 'package:flutter/material.dart';
import 'package:weather/chart_screen.dart';
import 'package:weather/weekly_forecast_screen.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    WeeklyForecastScreen(),
    ChartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Epic Weather',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rain Detector 4000'),
        ),
        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Weekly Forecast',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.show_chart),
              label: 'Chart',
            ),

          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(WeatherApp());
}
