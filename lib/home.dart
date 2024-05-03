import 'package:flutter/material.dart';
import 'package:quiztpm/dataDiri.dart';
import 'package:quiztpm/hari.dart';
import 'package:quiztpm/kubus.dart';
import 'package:quiztpm/trapesium.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Utama'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HitungTrapesium()),
                );
              },
              child: const Text('Hitung Trapesium'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HitungKubus()),
                );
              },
              child: const Text('Hitung Kubus'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HitungHari()),
                );
              },
              child: const Text('Hitung Hari'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DataDiriPage()),
                );
              },
              child: const Text('Data  Diri'),
            ),
          ],
        ),
      ),
    );
  }
}
