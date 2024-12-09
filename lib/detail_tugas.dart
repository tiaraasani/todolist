// detail_tugas.dart
import 'package:flutter/material.dart';

class DetailTugasScreen extends StatelessWidget {
  final Map<String,dynamic> task;

  DetailTugasScreen({required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Tugas')),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
                child: Center(
                  child: Text(
                    task['tugas'],
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(task['deskripsi'], style: TextStyle(fontSize: 16),),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
