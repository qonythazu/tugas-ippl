import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddKain extends StatefulWidget {
  const AddKain({super.key});

  @override
  State<AddKain> createState() => _AddKainState();
}

class _AddKainState extends State<AddKain> {
  var nama = TextEditingController();
  var price = TextEditingController();

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
                          hintText: "Katun",
                          hintStyle:
                              TextStyle(color: Theme.of(context).primaryColor)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextField(
                      controller: price,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.attach_money),
                          labelText: "Harga",
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "30k",
                          hintStyle:
                              TextStyle(color: Theme.of(context).primaryColor)),
                    ),
                  ),
                ],
              )),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text("add"),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
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
