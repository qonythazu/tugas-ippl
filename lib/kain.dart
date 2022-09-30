import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class KainPage extends StatefulWidget {
  const KainPage({super.key});

  @override
  State<KainPage> createState() => _KainPageState();
}

class _KainPageState extends State<KainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(""),
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xffFFAD60))),
      body: Center(
          child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Kain",
            style: TextStyle(
                color: Color(0xffFFAD60),
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
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  color: Color(0xff96CEB4),
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
              BoxDecoration(border: Border.all(color: Color(0xffFFAD60))),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  "Satin",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff96CEB4)),
                ),
                Spacer(),
                Text(
                  "30k/meter",
                  style: TextStyle(fontSize: 16, color: Color(0xff96CEB4)),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent, elevation: 0),
                    onPressed: () {},
                    child: Icon(
                      Icons.edit,
                      color: Color(0xffFFAD60),
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent, elevation: 0),
                    onPressed: () {},
                    child: Icon(
                      Icons.delete,
                      color: Color(0xffD9534F),
                    ))
              ],
            ),
          ),
        ),
        Container(
          decoration:
              BoxDecoration(border: Border.all(color: Color(0xffFFAD60))),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  "Katun",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff96CEB4)),
                ),
                Spacer(),
                Text(
                  "30k/meter",
                  style: TextStyle(fontSize: 16, color: Color(0xff96CEB4)),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent, elevation: 0),
                    onPressed: () {},
                    child: Icon(
                      Icons.edit,
                      color: Color(0xffFFAD60),
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent, elevation: 0),
                    onPressed: () {},
                    child: Icon(
                      Icons.delete,
                      color: Color(0xffD9534F),
                    ))
              ],
            ),
          ),
        )
      ])),
    );
  }
}
