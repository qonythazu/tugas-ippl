import 'package:sewnotes/formpesananreguler3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PesananReguler2 extends StatefulWidget {
  const PesananReguler2({super.key});

  @override
  State<PesananReguler2> createState() => _PesananReguler2State();
}

class _PesananReguler2State extends State<PesananReguler2> {
  bool isChecked = false;

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
              margin: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(children: [
                Expanded(
                  child: ListView(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Kemeja",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 24,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextField(
                          controller: null,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.checkroom),
                              labelText: "Bahu",
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "20",
                              hintStyle:
                                  TextStyle(color: Theme.of(context).primaryColor)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextField(
                          controller: null,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.checkroom),
                              labelText: "Panjang Lengan",
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "54",
                              hintStyle:
                                  TextStyle(color: Theme.of(context).primaryColor)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextField(
                          controller: null,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.checkroom),
                              labelText: "Lingkar Dada",
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "82",
                              hintStyle:
                                  TextStyle(color: Theme.of(context).primaryColor)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextField(
                          controller: null,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.checkroom),
                              labelText: "Panjang Baju",
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "67",
                              hintStyle:
                                  TextStyle(color: Theme.of(context).primaryColor)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          children: [
                            Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                }),
                            Text(
                              "Tandai sebagai prioritas",
                              style: TextStyle(color: Theme.of(context).primaryColor),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextField(
                          controller: null,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.date_range),
                              labelText: "Deadline",
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "29-09-2023",
                              hintStyle:
                                  TextStyle(color: Theme.of(context).primaryColor)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextField(
                          controller: null,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.attach_money),
                              labelText: "Tambahan Biaya",
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "10000",
                              hintStyle:
                                  TextStyle(color: Theme.of(context).primaryColor)),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PesananReguler3()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text("next"),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        backgroundColor: Theme.of(context).primaryColor),
                  ),
                ),
              ])),
        ));
  }
}
