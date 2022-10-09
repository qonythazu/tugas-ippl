import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PesananKecil extends StatefulWidget {
  const PesananKecil({super.key});

  @override
  State<PesananKecil> createState() => _PesananKecilState();
}

class _PesananKecilState extends State<PesananKecil> {
  var name = TextEditingController();
  var phone = TextEditingController();
  var order = TextEditingController();
  var fee = TextEditingController();
  var notes = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Expanded(
                  child: ListView(
                children: [
                  Text("Form Pemesanan"),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextField(
                      controller: name,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.web),
                          labelText: "Nama",
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Rahman",
                          hintStyle: TextStyle(
                              color: Theme.of(context).primaryColor)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextField(
                      controller: phone,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.phone),
                          labelText: "No. Telp",
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "08xxxxxxxx",
                          hintStyle: TextStyle(
                              color: Theme.of(context).primaryColor)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextField(
                      controller: order,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.shopping_cart),
                          labelText: "Pesanan",
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Celana Robek",
                          hintStyle: TextStyle(
                              color: Theme.of(context).primaryColor)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextField(
                      controller: fee,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.attach_money),
                          labelText: "Biaya",
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "20k",
                          hintStyle: TextStyle(
                              color: Theme.of(context).primaryColor)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextField(
                      controller: notes,
                      decoration: InputDecoration(
                          labelText: "Notes",
                          filled: true,
                          fillColor: Colors.white,
                          hintStyle: TextStyle(
                              color: Theme.of(context).primaryColor)),
                      minLines: 4,
                      maxLines: null,
                    ),
                  )
                ],
              )),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text("save"),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      backgroundColor: Theme.of(context).primaryColor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
