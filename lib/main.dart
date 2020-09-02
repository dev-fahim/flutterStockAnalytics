import 'package:flutter/material.dart';
import 'package:flutter_stock_analytics/chartWidget/chartWidget.dart';
import 'package:flutter_stock_analytics/chartWidget/sparkLineChartWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/sparkline': (context) => SparkLineChartWidget()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pushNamed(context, '/sparkline');
      },
      child: Icon(Icons.show_chart),),
      appBar: AppBar(
        title: Text("Stock Status in google chart"),
      ),
      body: Center(
        child: ChartWidget(),
      )
    );
  }
}
