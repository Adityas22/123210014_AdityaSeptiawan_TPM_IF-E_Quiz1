import 'package:flutter/material.dart';
import 'dart:math';

class HitungTrapesium extends StatefulWidget {
  const HitungTrapesium({Key? key}) : super(key: key);

  @override
  _HitungTrapesiumState createState() => _HitungTrapesiumState();
}

class _HitungTrapesiumState extends State<HitungTrapesium> {
  final TextEditingController _alasAtasController = TextEditingController();
  final TextEditingController _alasBawahController = TextEditingController();
  final TextEditingController _tinggiController = TextEditingController();
  double _luas = 0;
  double _keliling = 0;

  void _hitungLuasKeliling() {
    double alasAtas = double.tryParse(_alasAtasController.text) ?? 0;
    double alasBawah = double.tryParse(_alasBawahController.text) ?? 0;
    double tinggi = double.tryParse(_tinggiController.text) ?? 0;

    double luas = 0.5 * (alasAtas + alasBawah) * tinggi;
    double sisiMiring =
        sqrt(pow((alasBawah - alasAtas) / 2, 2) + pow(tinggi, 2));
    double keliling = alasAtas + alasBawah + (2 * sisiMiring);

    setState(() {
      _luas = luas;
      _keliling = keliling;
    });
  }

  void _clear() {
    setState(() {
      _alasAtasController.clear();
      _alasBawahController.clear();
      _tinggiController.clear();
      _luas = 0;
      _keliling = 0;
    });
  }

  @override
  void dispose() {
    _alasAtasController.dispose();
    _alasBawahController.dispose();
    _tinggiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hitung Luas dan Keliling Trapesium'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _alasAtasController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Alas Atas'),
            ),
            SizedBox(height: 8),
            TextField(
              controller: _alasBawahController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Alas Bawah'),
            ),
            SizedBox(height: 8),
            TextField(
              controller: _tinggiController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Tinggi'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _hitungLuasKeliling,
              child: Text('Proses'),
            ),
            SizedBox(height: 16),
            Text(
              'Luas: $_luas',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Keliling: $_keliling',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _clear,
              child: Text('Clear'),
            ),
          ],
        ),
      ),
    );
  }
}
