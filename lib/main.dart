import 'package:fetch_data_demo/Response.dart';
import 'package:fetch_data_demo/rest_ds.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

  List<String> names = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) {
            return Text(names[index]);
          },
        ),
    );
  }

  fetchData() async {
    RestDatasource api = new RestDatasource();
    Response res = await api.getData();
    setState(() {
      names.add(res.name.first);
    });
    print(res.name.first);
  }
}
