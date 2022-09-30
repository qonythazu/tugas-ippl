import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailProduk extends StatefulWidget {
  const DetailProduk({super.key});

  @override
  State<DetailProduk> createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(""),
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xffD9534F))),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Keterangan Produk",
                style: TextStyle(
                    color: Color(0xffD9534F),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Text(
                    "Kemeja",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff96CEB4)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    child: Row(
                      children: [
                        Text(
                          "Dewasa",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff96CEB4)),
                        ),
                        Spacer(),
                        Text(
                          "60k",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff96CEB4)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    child: Row(
                      children: [
                        Text(
                          "Anak-anak",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff96CEB4)),
                        ),
                        Spacer(),
                        Text(
                          "40k",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff96CEB4)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text("Ukuran yang diperlukan"),
                  Row(
                    children: [
                      Container(
                        child: Text("Bahu"),
                      ),
                      Container(
                        child: Text("Panjang Lengan"),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text("Lingkar Dada"),
                      ),
                      Container(
                        child: Text("Panjang Baju"),
                      )
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {}, 
                  icon: Icon(Icons.delete), 
                  label: Text("DELETE")
                ),
                ElevatedButton.icon(
                  onPressed: () {}, 
                  icon: Icon(Icons.edit), 
                  label: Text("EDIT")
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
