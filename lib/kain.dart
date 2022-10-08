import 'package:sewnotes/addkain.dart';
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
          iconTheme: IconThemeData(color: Theme.of(context).primaryColor)),
      body: Center(
          child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Kain",
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
                            builder: (context) => const AddKain()));
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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  "Satin",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColor),
                ),
                Spacer(),
                Text(
                  "30k/meter",
                  style: TextStyle(fontSize: 16, color: Theme.of(context).primaryColor),
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
        ),
        Container(
          decoration:
              BoxDecoration(border: Border.all(color: Theme.of(context).primaryColor)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  "Katun",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColor),
                ),
                Spacer(),
                Text(
                  "30k/meter",
                  style: TextStyle(fontSize: 16, color: Theme.of(context).primaryColor),
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
        )
      ])),
    );
  }
}
