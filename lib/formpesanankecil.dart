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
              child: Column(
                children: [
                  Expanded(
                      child: ListView(
                    children: [
                      Text("Form Pemesanan"),
                      TextField(
                        controller: name,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.web), labelText: "Nama"),
                      ),
                      TextField(
                        controller: phone,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            labelText: "No. Telepon"),
                      ),
                      TextField(
                        controller: order,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.shopping_cart),
                            labelText: "Pesanan"),
                      ),
                      TextField(
                        controller: fee,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.attach_money),
                            labelText: "Biaya"),
                      ),
                      TextField(
                        controller: notes,
                        decoration: InputDecoration(labelText: "Notes"),
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
                  )
                ],
              ),
            )),
      ),
    );
  }
}
