import 'package:flutter/material.dart';

class HitungHari extends StatefulWidget {
  const HitungHari({Key? key});

  @override
  _HitungHariState createState() => _HitungHariState();
}

class _HitungHariState extends State<HitungHari> {
  final TextEditingController _angkaController = TextEditingController();
  String _hari = '';

  void _hitungHari() {
    int angka = int.tryParse(_angkaController.text) ?? 0;
    String hari = '';

    switch (angka) {
      case 1:
        hari = 'Senin';
        break;
      case 2:
        hari = 'Selasa';
        break;
      case 3:
        hari = 'Rabu';
        break;
      case 4:
        hari = 'Kamis';
        break;
      case 5:
        hari = 'Jumat';
        break;
      case 6:
        hari = 'Sabtu';
        break;
      case 7:
        hari = 'Minggu';
        break;
      default:
        hari = 'Invalid';
        break;
    }

    setState(() {
      _hari = hari;
    });
  }

  void _clear() {
    setState(() {
      _angkaController.clear();
      _hari = '';
    });
  }

  @override
  void dispose() {
    _angkaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hitung Hari'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _angkaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Angka (1-7)'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _hitungHari,
              child: Text('Proses'),
            ),
            SizedBox(height: 16),
            Text(
              'Hari: $_hari',
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
