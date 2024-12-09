// tambah_tugas.dart
import 'package:flutter/material.dart';

class TambahTugasScreen extends StatefulWidget {
  @override
  _TambahTugasScreenState createState() => _TambahTugasScreenState();
}

class _TambahTugasScreenState extends State<TambahTugasScreen> {
  String newTask = '';
  String desc = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tambah Tugas')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.network(
                'https://img.freepik.com/free-vector/hand-drawn-college-entrance-exam-illustration_23-2150349618.jpg?t=st=1729089167~exp=1729092767~hmac=a3bf56200e1728a9443e2886d343a72dc06215ee3f0ec54c649ecc6849979252&w=740',
                width: 200,
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    newTask = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Nama Tugas',
                ),
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    desc = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Deskripsi Tugas',
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.green)
                  ),
                  onPressed: () {
                    if (newTask.isNotEmpty) {
                      Navigator.pop(
                        context,
                        {"tugas": newTask, 'deskripsi': desc},
                      ); // Kembalikan hasil ke halaman sebelumnya
                    }
                  },
                  child: Text('Simpan', style: TextStyle(color: Colors.white)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
