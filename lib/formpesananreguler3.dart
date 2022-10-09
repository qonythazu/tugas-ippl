import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

List<String> kain = <String>['Katun', 'Satin'];

class PesananReguler3 extends StatefulWidget {
  const PesananReguler3({super.key});

  @override
  State<PesananReguler3> createState() => _PesananReguler3State();
}

enum Kain { belisendiri, dibelikan }

class _PesananReguler3State extends State<PesananReguler3> {
  Kain? _character = Kain.belisendiri;
  var panjangKain = TextEditingController(text: "1");

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
          margin: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(children: [
            Expanded(
                child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Kain",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Beli Sendiri",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  leading: Radio<Kain>(
                    value: Kain.belisendiri,
                    groupValue: _character,
                    onChanged: (Kain? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                    activeColor: Theme.of(context).primaryColor,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Dibelikan",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  leading: Radio<Kain>(
                    value: Kain.dibelikan,
                    groupValue: _character,
                    onChanged: (Kain? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                    activeColor: Theme.of(context).primaryColor,
                  ),
                ),
                KainList(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Panjang"),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Slider(
                        min: 1,
                        max: 5,
                        value: double.tryParse(panjangKain.text) ?? 1,
                        onChanged: (val) {
                          setState(() {
                            panjangKain.text = val.round().toString();
                          });
                        },
                      ),
                    ),
                    Flexible(child: Text(panjangKain.text))
                  ],
                ),
                TextField(
                  controller: null,
                  decoration: InputDecoration(
                      labelText: "Notes",
                      filled: true,
                      fillColor: Colors.white,
                      hintStyle:
                          TextStyle(color: Theme.of(context).primaryColor)),
                  minLines: 4,
                  maxLines: null,
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
            ),
          ]),
        ),
      ),
    );
  }
}

class KainList extends StatefulWidget {
  const KainList({super.key});

  @override
  State<KainList> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<KainList> {
  String dropdownValue = kain.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style:
          TextStyle(color: Theme.of(context).primaryColor, fontFamily: "Montserrat"),
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
      items: kain.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
