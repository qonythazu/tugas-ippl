import 'package:anuy/produk.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Kustom extends StatefulWidget {
  const Kustom({super.key});

  @override
  State<Kustom> createState() => _KustomState();
}

class _KustomState extends State<Kustom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(""),
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xffD9534F))),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                "Kustomisasi",
                style: TextStyle(
                    color: Color(0xffD9534F),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Color(0xffD9534F))),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProdukPage()
                      )
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 8.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.tune,
                          color: Color(0xff96CEB4),
                        ),
                        const Text("Produk",
                            style: TextStyle(
                                color: Color(0xffFFAD60), fontSize: 16)),
                        Spacer(),
                        const Icon(
                          Icons.chevron_right,
                          color: Color(0xffD9534F),
                        )
                      ],
                    ),
                  )),
            ),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Color(0xffD9534F))),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 8.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.tune,
                          color: Color(0xff96CEB4),
                        ),
                        const Text(
                          "Kain",
                          style:
                              TextStyle(color: Color(0xffFFAD60), fontSize: 16),
                        ),
                        Spacer(),
                        const Icon(
                          Icons.chevron_right,
                          color: Color(0xffD9534F),
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
