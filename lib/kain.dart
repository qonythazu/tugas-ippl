import 'dart:convert';

import 'package:sewnotes/addkain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'globals.dart' as globals;

getKain(String id_user) async {
  var url = Uri.http(globals.apiURL, 'sewnotes/kain/user/$id_user');
  var response = await http.get(url);
  Map result = jsonDecode(response.body);

  if (result['status'] == 1 && (result['data'].length > 0)) {
    return result['data'];
  } else {
    return "False";
  }
}

class KainPage extends StatefulWidget {
  const KainPage({super.key});

  @override
  State<KainPage> createState() => _KainPageState();
}

class _KainPageState extends State<KainPage> {
  var kainData;

  @override
  void initState() {
    Future.delayed(Duration.zero,() async {
      kainData = await getKain("1");
      print(kainData);
    });
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((_) async {
    //   kainData = await getKain("1");
    //   print(kainData);
    // });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(""),
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Theme.of(context).primaryColor)),
      body: Center(
          child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Kain",
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 24,
                fontWeight: FontWeight.w400),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AddKain()));
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
        // ContainerKain(),
        for (var i = 0; i < kainData.length; i++)
          ContainerKain(nama_kain: kainData[i]['nama_kain'], harga_kain: kainData[i]['harga_kain'])
      ])),
    );
  }
}

class ContainerKain extends StatelessWidget {
  final String nama_kain;
  final int harga_kain;

  const ContainerKain({
    Key? key,
    required this.nama_kain,
    required this.harga_kain
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).primaryColor)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Text(
              nama_kain,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor),
            ),
            Spacer(),
            Text(
              "$harga_kain/meter",
              style: TextStyle(
                  fontSize: 16, color: Theme.of(context).primaryColor),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent, elevation: 0),
                onPressed: () {},
                child: Icon(
                  Icons.edit,
                  color: Theme.of(context).primaryColor,
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent, elevation: 0),
                onPressed: () {},
                child: Icon(
                  Icons.delete,
                  color: Theme.of(context).primaryColor,
                ))
          ],
        ),
      ),
    );
  }
}
