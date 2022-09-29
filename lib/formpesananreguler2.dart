import 'package:anuy/formpesananreguler3.dart';
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
          iconTheme: IconThemeData(color: Color(0xffD9534F)),
        ),
        body: Center(
          child: Theme(
            data: Theme.of(context).copyWith(
                inputDecorationTheme:
                    Theme.of(context).inputDecorationTheme.copyWith(
              prefixIconColor:
                  MaterialStateColor.resolveWith((Set<MaterialState> states) {
                if (states.contains(MaterialState.focused)) {
                  return Color(0xffD9534F);
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
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Kemeja",
                            style: TextStyle(
                                color: Color(0xffD9534F),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        TextField(
                          controller: null,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.checkroom),
                              prefixIconColor: Color(0xffD9534F),
                              labelText: "Bahu",
                              labelStyle: TextStyle(
                                color: Color(0xffD9534F),
                              ),
                              hintText: "20",
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                width: 1,
                                color: Color(0xffD9534F),
                              ))),
                        ),
                        TextField(
                          controller: null,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.checkroom),
                              prefixIconColor: Color(0xffD9534F),
                              labelText: "Panjang Lengan",
                              labelStyle: TextStyle(
                                color: Color(0xffD9534F),
                              ),
                              hintText: "54",
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                width: 1,
                                color: Color(0xffD9534F),
                              ))),
                        ),
                        TextField(
                          controller: null,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.checkroom),
                              prefixIconColor: Color(0xffD9534F),
                              labelText: "Lingkar Dada",
                              labelStyle: TextStyle(
                                color: Color(0xffD9534F),
                              ),
                              hintText: "82",
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                width: 1,
                                color: Color(0xffD9534F),
                              ))),
                        ),
                        TextField(
                          controller: null,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.checkroom),
                              prefixIconColor: Color(0xffD9534F),
                              labelText: "Panjang Baju",
                              labelStyle: TextStyle(
                                color: Color(0xffD9534F),
                              ),
                              hintText: "67",
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                width: 1,
                                color: Color(0xffD9534F),
                              ))),
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
                                style: TextStyle(color: Color(0xffD9534F)),
                              )
                            ],
                          ),
                        ),
                        TextField(
                          controller: null,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.date_range),
                              prefixIconColor: Color(0xffD9534F),
                              labelText: "Deadline",
                              labelStyle: TextStyle(
                                color: Color(0xffD9534F),
                              ),
                              hintText: "29-09-2023",
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                width: 1,
                                color: Color(0xffD9534F),
                              ))),
                        ),
                        TextField(
                          controller: null,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.attach_money),
                              prefixIconColor: Color(0xffD9534F),
                              labelText: "Tambahan Biaya",
                              labelStyle: TextStyle(
                                color: Color(0xffD9534F),
                              ),
                              hintText: "10.000",
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                width: 1,
                                color: Color(0xffD9534F),
                              ))),
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
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          backgroundColor: Color(0xff96CEB4)),
                    ),
                  ),
                ])),
          ),
        ));
  }
}
