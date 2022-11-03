import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:rflutter_alert/rflutter_alert.dart';
import 'globals.dart' as globals;


addProdukFunc(String nama_jasa, String harga_dewasa, String harga_anak) async {
  var url = Uri.http(globals.apiURL, 'sewnotes/jasa');
  var response = await http.post(url,
      body: {'id_user': '1', 'nama_jasa': nama_jasa, 'harga_dewasa': harga_dewasa, 'harga_anak': harga_anak});
  Map result = jsonDecode(response.body);

  if (result['status'] == 1) {
    return "True";
  } else {
    return "False";
  }
}

class AddProduk extends StatefulWidget {
  const AddProduk({super.key});

  @override
  State<AddProduk> createState() => _AddProdukState();
}

class _AddProdukState extends State<AddProduk> {
  var nama = TextEditingController();
  var adult = TextEditingController();
  var kids = TextEditingController();
  var size = [TextEditingController()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(""),
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Theme.of(context).primaryColor)),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 40.0, horizontal: 32.0),
          child: Column(
            children: [
              Expanded(
                  child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextField(
                      controller: nama,
                      decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.web),
                            labelText: "Nama",
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Kemeja",
                            hintStyle: TextStyle(
                                color: Theme.of(context).primaryColor)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextField(
                      controller: adult,
                      decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.attach_money),
                            labelText: "Harga untuk Dewasa",
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "40000",
                            hintStyle: TextStyle(
                                color: Theme.of(context).primaryColor)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextField(
                      controller: kids,
                      decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.attach_money),
                            labelText: "Harga untuk Anak-anak",
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "20000",
                            hintStyle: TextStyle(
                                color: Theme.of(context).primaryColor)),
                    ),
                  ),
                  Column(
                    children: [
                      for (var i = 0; i < size.length; ++i)
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextField(
                          controller: size[i],
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  size.removeAt(i);
                                });
                              }, 
                              icon: Icon(Icons.remove, color: Theme.of(context).primaryColor,)
                            ),
                            prefixIcon: const Icon(Icons.straighten),
                            labelText: "Ukuran",
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Bahu",
                            hintStyle: TextStyle(
                                color: Theme.of(context).primaryColor)
                          ),
                        ),
                      )
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        size.add(TextEditingController());
                      });
                    }, 
                    child: Text("Tambah Ukuran", style: TextStyle(color: Theme.of(context).primaryColor),)
                  )
                ],
              )),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: ElevatedButton(
                  onPressed: () async {
                    if (nama.text.isNotEmpty || adult.text.isNotEmpty || kids.text.isNotEmpty) {
                      var result = await addProdukFunc(nama.text, adult.text, kids.text);

                      if (result == "True") {
                        Alert(
                          context: context,
                          title: "Berhasil Menambah Produk",
                          type: AlertType.success
                        ).show();
                      } else if (result == "False") {
                        Alert(
                          context: context,
                          title: "Gagal Menambah Produk",
                          type: AlertType.error
                        ).show();
                      }
                    } else {
                      print("Monki");
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text("add"),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      backgroundColor: Theme.of(context).primaryColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
