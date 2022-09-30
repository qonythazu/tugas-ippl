import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailProduk extends StatefulWidget {
  const DetailProduk({super.key});

  @override
  State<DetailProduk> createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
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
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Keterangan Produk",
                style: TextStyle(
                    color: Color(0xffD9534F),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Text(
                    "Kemeja",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff96CEB4)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    child: Row(
                      children: [
                        Text(
                          "Dewasa",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff96CEB4)),
                        ),
                        Spacer(),
                        Text(
                          "60k",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff96CEB4)),
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
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff96CEB4)),
                        ),
                        Spacer(),
                        Text(
                          "40k",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff96CEB4)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffFFAD60)),
                borderRadius: BorderRadius.circular(16)
              ),
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Ukuran yang diperlukan",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff96CEB4)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Color(0xffD9534F),
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Text(
                            "Bahu",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Color(0xffD9534F),
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Text(
                            "Panjang Lengan",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Color(0xffD9534F),
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Text(
                            "Lingkar Dada",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14
                            )
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Color(0xffD9534F),
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Text(
                            "Panjang Baju",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14
                            )
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 48.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0
                    ),
                    onPressed: () {}, 
                    icon: Icon(
                      Icons.delete, 
                      color: Color(0xffD9534F),
                    ), 
                    label: Text(
                      "DELETE",
                      style: TextStyle(
                        color: Color(0xffD9534F),
                        fontSize: 16
                      ),
                    )
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0
                    ),
                    onPressed: () {}, 
                    icon: Icon(
                      Icons.edit,
                      color: Color(0xffFFAD60),
                    ), 
                    label: Text(
                      "EDIT",
                      style: TextStyle(
                        color: Color(0xffFFAD60),
                        fontSize: 16
                      ),
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
