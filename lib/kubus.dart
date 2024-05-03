import 'package:flutter/material.dart';

class HitungKubus extends StatefulWidget {
  const HitungKubus({Key? key});

  @override
  _HitungKubusState createState() => _HitungKubusState();
}

class _HitungKubusState extends State<HitungKubus> {
  final TextEditingController _sisiController = TextEditingController();
  double _volume = 0;
  double _keliling = 0;

  void _hitungVolumeKeliling() {
    double sisi = double.tryParse(_sisiController.text) ?? 0;

    double volume = sisi * sisi * sisi;
    double keliling = 12 * sisi;

    setState(() {
      _volume = volume;
      _keliling = keliling;
    });
  }

  void _clear() {
    setState(() {
      _sisiController.clear();
      _volume = 0;
      _keliling = 0;
    });
  }

  @override
  void dispose() {
    _sisiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hitung Volume dan Keliling Kubus'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _sisiController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Sisi'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _hitungVolumeKeliling,
              child: Text('Proses'),
            ),
            SizedBox(height: 16),
            Text(
              'Volume: $_volume',
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
