import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'flutter acigation study',
      home: new FirstScreen(),
    ),
  );
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter acigation study'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('前往下一页'),
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new SecondScreen(),
                  ));
            }),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('子页面'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('返回'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
