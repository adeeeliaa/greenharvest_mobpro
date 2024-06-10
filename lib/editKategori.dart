import 'package:flutter/material.dart';

class EditKategori extends StatefulWidget {
  @override
  _EditKategoriState createState() => _EditKategoriState();
}

class _EditKategoriState extends State<EditKategori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        leadingWidth: 56, // default leading width in AppBar
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Divider(
              color: Color(0xFFECE1DA),
              thickness: 5,
            ),
            SizedBox(height: 14,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Nama Kategori',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFEEEEEE)), // Only border stroke
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Masukkan Nama Kategori',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'URL Gambar Kategori',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFEEEEEE)), // Only border stroke
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Masukkan URL Gambar Kategori',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Perubahan Tersimpan'),
                      duration: Duration(seconds: 2),
                    ),
                  );
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Color(0xFF1A4D2E)),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: 5),
                      Text(
                        'Simpan Perubahan',
                        style: TextStyle(
                          color: Color(0xFF1A4D2E),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
