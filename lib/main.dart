import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: '页面跳转返回数据',
      home: FirstPage(),
    ),
  );
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('前往子页面取数据'),
      ),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('取数据'),
      onPressed: () => {
        _navigateToXiaoJieJie(context),
      },
    );
  }

  _navigateToXiaoJieJie(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Xiaojiejie(),
      ),
    );
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('$result'),
      ),
    );
  }
}

class Xiaojiejie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('数据页面')),
        body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context, 'A数据: 1111111');
                },
                child: Text('A数据'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context, 'B数据: 2222');
                },
                child: Text('B数据'),
              )
            ],
          ),
        ));
  }
}
