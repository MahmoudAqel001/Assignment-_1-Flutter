import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Widget getRow({
    required String label,
    required String value,
  }) {
    return Container(
      padding: EdgeInsets.all(4),
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white24,
        border: Border.all(),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                value,
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          SizedBox(width: 4),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text(
                label,
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text(
          'عاصمة فلسطين',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.network('https://media.almayadeen.net/archive/image/2017/8/1/eef5ab41-2e4d-4888-832e-f2058ff8f706.jpg?format=webp&v=1&width=1500'),
              Text(
                'مدينة القدس',
                style: TextStyle(
                  fontSize: 24,
                  backgroundColor:Colors.amber,
                ),
              ),
              getRow(label: 'الاسم', value: 'القدس'),
              getRow(label: 'المساحة', value: '125 كم'),
              getRow(label: 'السكان', value: '358000 نسمة'),
              getRow(label: 'الدولة', value: 'فلسطين'),
              getRow(label: 'اسم الطالب', value: 'عبد العزيز يوسف عقل'),
            ],
          ),
        ),
      ),
    );
  }
}
