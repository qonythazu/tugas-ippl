import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'formpesananreguler2.dart';

List<String> jasa = <String>['Kemeja', 'Celana'];

class PesananReguler1 extends StatefulWidget {
  const PesananReguler1({super.key});

  @override
  State<PesananReguler1> createState() => _PesananReguler1State();
}

enum Ukuran { dewasa, anak }

class _PesananReguler1State extends State<PesananReguler1> {
  var name = TextEditingController();
  var phone = TextEditingController();

  Ukuran? _character = Ukuran.dewasa;

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
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Form Pemesanan",
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
                        controller: name,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.web),
                            labelText: "Nama",
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Rahman",
                            hintStyle:
                                TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 16
                                )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: TextField(
                        controller: phone,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.phone),
                            labelText: "No Telp",
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "08xxxx",
                            hintStyle:
                                TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 16
                                )),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "Kategori",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        ListTile(
                          title: const Text("Dewasa"),
                          leading: Radio<Ukuran>(
                            value: Ukuran.dewasa,
                            groupValue: _character,
                            onChanged: (Ukuran? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                            activeColor: Theme.of(context).primaryColor,
                          ),
                        ),
                        ListTile(
                          title: const Text("Anak-anak"),
                          leading: Radio<Ukuran>(
                            value: Ukuran.anak,
                            groupValue: _character,
                            onChanged: (Ukuran? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                            activeColor: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                    Jasa(),
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
                            builder: (context) => const PesananReguler2()));
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
            ],
          ),
        ),
      ),
    );
  }
}

class Jasa extends StatefulWidget {
  const Jasa({super.key});

  @override
  State<Jasa> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<Jasa> {
  String dropdownValue = jasa.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: TextStyle(
          color: Theme.of(context).primaryColor, fontFamily: "Montserrat", fontSize: 16),
      underline: Container(
        height: 2,
        color: Theme.of(context).primaryColor,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: jasa.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
