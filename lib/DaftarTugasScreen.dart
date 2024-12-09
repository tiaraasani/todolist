import 'package:flutter/material.dart';
import 'package:myapp/detail_tugas.dart';
import 'package:myapp/tambah_tugas.dart';

class DaftarTugasScreen extends StatefulWidget {
  @override
  _DaftarTugasScreenState createState() => _DaftarTugasScreenState();
}

class _DaftarTugasScreenState extends State<DaftarTugasScreen> {
  List<Map<String, dynamic>> tasks = []; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daftar Tugas')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(tasks[index]['tugas']),
                onTap: () {
                  // Navigasi ke halaman detail tugas
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailTugasScreen(
                        task: tasks[index],
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Hapus 'const' di depan MaterialPageRoute
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TambahTugasScreen()),
          );

          if (result != null) {
            setState(() {
              tasks.add(result);
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
