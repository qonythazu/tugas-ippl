import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class DetailPesanan extends StatefulWidget {
  final int idPesanan;

  const DetailPesanan(
      {
        super.key,
        required this.idPesanan,
      }
    );

  @override
  State<DetailPesanan> createState() => _DetailPesananState();
}

class _DetailPesananState extends State<DetailPesanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Color(0xffFFAD60)),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Kemeja",
                  style: TextStyle(
                    color: Color(0xffD9534F),
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffD9534F)),
                  borderRadius: BorderRadius.circular(8)
                ),
                margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Bahu", style: TextStyle(color: Color(0xffFFAD60)),),
                    Spacer(),
                    Text("20", style: TextStyle(color: Color(0xffD9534F)),)
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffD9534F)),
                  borderRadius: BorderRadius.circular(8)
                ),
                margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Panjang Lengan", style: TextStyle(color: Color(0xffFFAD60)),),
                    Spacer(),
                    Text("57", style: TextStyle(color: Color(0xffD9534F)),)
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffD9534F)),
                  borderRadius: BorderRadius.circular(8)
                ),
                margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Lingkar Dada", style: TextStyle(color: Color(0xffFFAD60)),),
                    Spacer(),
                    Text("90", style: TextStyle(color: Color(0xffD9534F)),)
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffD9534F)),
                  borderRadius: BorderRadius.circular(8)
                ),
                margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Panjang baju", style: TextStyle(color: Color(0xffFFAD60)),),
                    Spacer(),
                    Text("64", style: TextStyle(color: Color(0xffD9534F)),)
                  ],
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0
                      ),
                      onPressed: () {

                      }, 
                      icon: const Icon(Icons.delete, color: Color(0xffD9534F),), 
                      label: const Text("DELETE", style: TextStyle(color: Color(0xffD9534F)),)
                    ),
                     ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0
                      ),
                      onPressed: () {

                      }, 
                      icon: const Icon(Icons.edit, color: Color(0xffFFAD60),), 
                      label: const Text("EDIT", style: TextStyle(color: Color(0xffFFAD60)),)
                    )
                  ],
                ),
              )

            ],
          ),
        )
      ),
    );
  }
}