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
        iconTheme: IconThemeData(color: Color(0xffFFAD60)),
      ),
      body: Center(
        child: Theme(
          data: Theme.of(context).copyWith(
              inputDecorationTheme:
                  Theme.of(context).inputDecorationTheme.copyWith(
            prefixIconColor:
                MaterialStateColor.resolveWith((Set<MaterialState> states) {
              if (states.contains(MaterialState.focused)) {
                return Color(0xffFFAD60);
              }
              return Colors.grey;
            }),
          )),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Form Pemesanan",
                          style: TextStyle(
                              color: Color(0xffFFAD60),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      TextField(
                        controller: name,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.web),
                            prefixIconColor: Color(0xffFFAD60),
                            labelText: "Nama",
                            labelStyle: TextStyle(
                              color: Color(0xffFFAD60),
                            ),
                            hintText: "Nama",
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              width: 1,
                              color: Color(0xffFFAD60),
                            ))),
                      ),
                      TextField(
                        controller: phone,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            prefixIconColor: Color(0xffFFAD60),
                            labelText: "No. Telepon",
                            labelStyle: TextStyle(
                              color: Color(0xffFFAD60),
                            ),
                            hintText: "08xxxxxxxx87",
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              width: 1,
                              color: Color(0xffFFAD60),
                            ))),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "Ukuran",
                              style: TextStyle(
                                  color: Color(0xffFFAD60), fontSize: 16),
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
                              activeColor: Color(0xffFFAD60),
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
                              activeColor: Color(0xffFFAD60),
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
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        backgroundColor: Color(0xffD9534F)),
                  ),
                ),
              ],
            ),
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
      style: const TextStyle(color: Color(0xffFFAD60)),
      underline: Container(
        height: 2,
        color: Color(0xffFFAD60),
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
