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
          child: Text(
            widget.idPesanan.toString()
          )
        ),
      ),
    );
  }
}