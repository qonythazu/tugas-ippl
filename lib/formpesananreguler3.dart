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
          iconTheme: IconThemeData(color: Color(0xff96CEB4))),
      body: Center(
        child: Theme(
            data: Theme.of(context).copyWith(
                inputDecorationTheme:
                    Theme.of(context).inputDecorationTheme.copyWith(
              prefixIconColor:
                  MaterialStateColor.resolveWith((Set<MaterialState> states) {
                if (states.contains(MaterialState.focused)) {
                  return Color(0xff96CEB4);
                }
                return Colors.grey;
              }),
            )),
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
                        style:
                            TextStyle(color: Color(0xff96CEB4), fontSize: 16),
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        "Beli Sendiri",
                        style: TextStyle(color: Color(0xffFFAD60)),
                      ),
                      leading: Radio<Kain>(
                        value: Kain.belisendiri,
                        groupValue: _character,
                        onChanged: (Kain? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                        activeColor: Color(0xff96CEB4),
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        "Dibelikan",
                        style: TextStyle(color: Color(0xffD9534F)),
                      ),
                      leading: Radio<Kain>(
                        value: Kain.dibelikan,
                        groupValue: _character,
                        onChanged: (Kain? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                        activeColor: Color(0xff96CEB4),
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
                      decoration: const InputDecoration(label: Text("Notes")),
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
                        backgroundColor: Color(0xffFFAD60)),
                  ),
                ),
              ]),
            )),
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
      items: kain.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
