import 'package:sewnotes/addproduk.dart';
import 'package:sewnotes/detailproduk.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({super.key});

  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
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
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Produk",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddProduk()));
                    },
                    icon: Icon(
                      Icons.add,
                      color: Theme.of(context).primaryColor,
                    ),
                    label: Text(""),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Theme.of(context).primaryColor)),
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailProduk()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          "Kemeja",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).primaryColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          child: Row(
                            children: [
                              Text(
                                "Dewasa",
                                style: TextStyle(
                                    fontSize: 16, color: Theme.of(context).primaryColor),
                              ),
                              Spacer(),
                              Text(
                                "60k",
                                style: TextStyle(
                                    fontSize: 16, color: Theme.of(context).primaryColor),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          child: Row(
                            children: [
                              Text(
                                "Anak-anak",
                                style: TextStyle(
                                    fontSize: 16, color: Theme.of(context).primaryColor),
                              ),
                              Spacer(),
                              Text(
                                "40k",
                                style: TextStyle(
                                    fontSize: 16, color: Theme.of(context).primaryColor),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Theme.of(context).primaryColor)),
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          "Celana",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).primaryColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          child: Row(
                            children: [
                              Text(
                                "Dewasa",
                                style: TextStyle(
                                    fontSize: 16, color: Theme.of(context).primaryColor),
                              ),
                              Spacer(),
                              Text(
                                "60k",
                                style: TextStyle(
                                    fontSize: 16, color: Theme.of(context).primaryColor),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          child: Row(
                            children: [
                              Text(
                                "Anak-anak",
                                style: TextStyle(
                                    fontSize: 16, color: Theme.of(context).primaryColor),
                              ),
                              Spacer(),
                              Text(
                                "40k",
                                style: TextStyle(
                                    fontSize: 16, color: Theme.of(context).primaryColor),
                              )
                            ],
                          ),
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
