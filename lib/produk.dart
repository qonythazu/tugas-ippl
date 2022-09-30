import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({super.key});

  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xffD9534F))
      ),
      body: Center(
        child: Column(
          children: [
            Text("Produk"),
            ElevatedButton.icon(
              onPressed: () {}, 
              icon: Icon(Icons.add), 
              label: Text("")
            ),
            ElevatedButton(
              onPressed: () {}, 
              child: Column(
                children: [
                  Text("Celana"),
                  Row(
                    children: [
                      Text("Dewasa"),
                      Text("60k")
                    ],
                  ),
                  Row(
                    children: [
                      Text("Anak-anak"),
                      Text("40k")
                    ],
                  )
                ],
              )
            ),
            ElevatedButton(
              onPressed: () {}, 
              child: Column(
                children: [
                  Text("Kemeja"),
                  Row(
                    children: [
                      Text("Dewasa"),
                      Text("60k")
                    ],
                  ),
                  Row(
                    children: [
                      Text("Anak-anak"),
                      Text("40k")
                    ],
                  )
                ],
              )
            )

          ],
        ),
      ),
    );
  }
}