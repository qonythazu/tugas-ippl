import 'package:sewnotes/formpesanankecil.dart';
import 'package:sewnotes/formpesananreguler1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PilihPesanan extends StatefulWidget {
  const PilihPesanan({super.key});

  @override
  State<PilihPesanan> createState() => _PilihPesananState();
}

class _PilihPesananState extends State<PilihPesanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(""),
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xff96CEB4))),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Pilih Pesanan",
                  style: TextStyle(color: Color(0xff96CEB4)),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PesananReguler1(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      backgroundColor: Color(0xff96CEB4),
                      minimumSize: Size(250, 40)),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: const Text("Pesanan Reguler"),
                  )),
              Divider(
                color: Colors.transparent,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PesananKecil(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      backgroundColor: Color(0xff96CEB4),
                      minimumSize: Size(250, 40)),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: const Text("Pesanan Kecil"),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
