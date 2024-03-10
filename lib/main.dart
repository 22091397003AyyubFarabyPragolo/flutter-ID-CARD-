import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
 Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ID Card App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ID Card'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildIdCard(
              'Dwi Putra Afrilianto',
              '../assets/images/dewi.jpg',
              '22091397025',
              '081936812903',
              'Bekasi Utara',
            ),
            buildIdCard(
              'Hanif Ihsan Alim Akbar',
              '../assets/images/hanip.jpg',
              '22091397020',
              '085173143500',
              'Pondok Indah',
            ),
            buildIdCard(
              'Ayyub Faraby Pragolo',
              '../assets/images/uhu.jpg',
              '22091397003',
              '082247969652',
              'Los Santos',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIdCard(
    String name,
    String imagePath,
    String nim,
    String phoneNumber,
    String address,
  ) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'NIM: $nim',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Phone: $phoneNumber',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Address: $address',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}