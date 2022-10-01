import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddProduk extends StatefulWidget {
  const AddProduk({super.key});

  @override
  State<AddProduk> createState() => _AddProdukState();
}

class _AddProdukState extends State<AddProduk> {
  var nama = TextEditingController();
  var adult = TextEditingController();
  var kids = TextEditingController();
  var size = [TextEditingController()];

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
                            hintText: "Kemeja",
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              width: 1,
                              color: Color(0xff96CEB4),
                            ))),
                      ),
                      TextField(
                        controller: adult,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.attach_money),
                            prefixIconColor: Color(0xff96CEB4),
                            labelText: "Harga untuk Dewasa",
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
                      TextField(
                        controller: kids,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.attach_money),
                            prefixIconColor: Color(0xff96CEB4),
                            labelText: "Harga untuk Anak-anak",
                            labelStyle: TextStyle(
                              color: Color(0xff96CEB4),
                            ),
                            hintText: "40k",
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              width: 1,
                              color: Color(0xff96CEB4),
                            ))),
                      ),
                      Column(
                        children: [
                          for (var i = 0; i < size.length; ++i)
                          TextField(
                            controller: size[i],
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    size.removeAt(i);
                                  });
                                }, 
                                icon: const Icon(Icons.remove, color: Color(0xffD9534F),)
                              ),
                              prefixIcon: Icon(Icons.straighten),
                              prefixIconColor: Color(0xff96CEB4),
                              labelText: "Ukuran",
                              labelStyle: TextStyle(
                                color: Color(0xff96CEB4),
                              ),
                              hintText: "Bahu",
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Color(0xff96CEB4),
                                )
                              )
                            ),
                          )
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            size.add(TextEditingController());
                          });
                        }, 
                        child: const Text("Tambah Ukuran", style: TextStyle(color: Color(0xffD9534F)),)
                      )
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
