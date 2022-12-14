import 'package:sewnotes/kain.dart';
import 'package:sewnotes/produk.dart';
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
          iconTheme: IconThemeData(color: Theme.of(context).primaryColor)),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                "Kustomisasi",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProdukPage()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 8.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.tune,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text("Produk",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 16)),
                        Spacer(),
                        Icon(
                          Icons.chevron_right,
                          color: Theme.of(context).primaryColor,
                        )
                      ],
                    ),
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const KainPage()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 8.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.tune,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text(
                          "Kain",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 16),
                        ),
                        Spacer(),
                        Icon(
                          Icons.chevron_right,
                          color: Theme.of(context).primaryColor,
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
