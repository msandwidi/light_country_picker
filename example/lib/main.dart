import 'package:flutter/material.dart';
import 'package:light_country_picker/light_country_picker.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Country Picker Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _selected;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Flutter Country Picker Demo'),
      ),
      body:  Column(
        children: [
          CountryPicker(
            showDialingCode: true,
            onChanged: (country){
              debugPrint(country.toString());
            },
          ),
          CountryPicker(
            showDialingCode: false,
            showCurrencyISO: true,
            onChanged: (country){
              debugPrint(country.currency.symbol);
            },
          ),
        ]
      ),
    );
  }
}
