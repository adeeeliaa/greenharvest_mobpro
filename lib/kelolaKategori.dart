import 'package:flutter/material.dart';
import 'package:greenharvest_mobpro/editKategori.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Poppins',
    ),
    home: KelolaKategori(),
  ));
}

class KelolaKategori extends StatelessWidget {
  final List<Map<String, String>> kategori = [
    {"name": "Beras", "image": "images/BerasIcon.png"},
    {"name": "Cabai", "image": "images/CabaiIcon.png"},
    {"name": "Kacang Hijau", "image": "images/KacangHijauIcon.png"},
    {"name": "Padi", "image": "images/PadiIcon.png"},
  ];

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
        title: Text(
          'Kelola Kategori',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leadingWidth: 56,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Divider(
            color: Color(0xFFECE1DA),
            thickness: 5,
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditKategori(),
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
                      Icon(Icons.add, color: Color(0xFF1A4D2E)),
                      SizedBox(width: 5),
                      Text(
                        'Tambah Produk',
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
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: kategori.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  color: Color(0xFF1A4D2E),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    child: Stack(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  kategori[index]["image"]!,
                                  width: 70,
                                  height: 70,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  kategori[index]["name"]!,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Column(
                            children: [
                              SizedBox(
                                width: 80,
                                height: 30,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => EditKategori(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Edit',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF1A4D2E),
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFFFF5EE),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              SizedBox(
                                width: 80,
                                height: 30,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Add your onPressed code here!
                                  },
                                  child: Text(
                                    'Delete',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
