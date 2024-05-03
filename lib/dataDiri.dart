import 'package:flutter/material.dart';

class DataDiriPage extends StatelessWidget {
  const DataDiriPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Portofolio',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/aditya.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'NIM : 123210014',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Nama : Aditya Septiawan',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Kelas : IF-E',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Hobi : Lari dan Nonton Youtube',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
