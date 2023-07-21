import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Dropdown Button Example')),
        body: Center(
          child: DropdownButtonWidget(),
        ),
      ),
    );
  }
}

class DropdownButtonWidget extends StatefulWidget {
  @override
  _DropdownButtonWidgetState createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  String _selectedOption = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0), // Add padding for better spacing
      child: DropdownButton<String>(
        value: _selectedOption,
        onChanged: (String? newValue) {
          setState(() {
            _selectedOption = newValue!;
          });
        },
        items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
