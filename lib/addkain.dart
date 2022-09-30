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
              margin: EdgeInsets.symmetric(vertical: 40.0, horizontal: 32.0),
              child: Column(
                children: [
                  Expanded(
                      child: ListView(
                    children: [
                      TextField(
                        controller: nama,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.web),
                            prefixIconColor: Color(0xff96CEB4),
                            labelText: "Nama",
                            labelStyle: TextStyle(
                              color: Color(0xff96CEB4),
                            ),
                            hintText: "Katun",
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              width: 1,
                              color: Color(0xff96CEB4),
                            ))),
                      ),
                      TextField(
                        controller: price,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.attach_money),
                            prefixIconColor: Color(0xff96CEB4),
                            labelText: "Harga",
                            labelStyle: TextStyle(
                              color: Color(0xff96CEB4),
                            ),
                            hintText: "60.000",
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              width: 1,
                              color: Color(0xff96CEB4),
                            ))),
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
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          backgroundColor: Color(0xffD9534F)),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}