import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

enum Status { belum, sedang, sudah }

class DetailPesanan extends StatefulWidget {
  final int idPesanan;

  const DetailPesanan({
    super.key,
    required this.idPesanan,
  });

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
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
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
                    color: Theme.of(context).primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white
                  ),
              margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Bahu",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  Spacer(),
                  Text(
                    "20",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white
                  ),
              margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Panjang Lengan",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  Spacer(),
                  Text(
                    "57",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white
                  ),
              margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Lingkar Dada",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  Spacer(),
                  Text(
                    "90",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white
                  ),
              margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Panjang baju",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  Spacer(),
                  Text(
                    "64",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                ],
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 40.0),
              child: Column(
                children: [
                  DialogExample(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              padding: EdgeInsets.symmetric(
                                  vertical: 16.0, horizontal: 16.0)),
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete,
                            color: Theme.of(context).primaryColor,
                          ),
                          label: Text(
                            "DELETE",
                            style: TextStyle(color: Theme.of(context).primaryColor),
                          )),
                      ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              padding: EdgeInsets.symmetric(
                                  vertical: 16.0, horizontal: 16.0)),
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit,
                            color: Theme.of(context).primaryColor,
                          ),
                          label: Text(
                            "EDIT",
                            style: TextStyle(color: Theme.of(context).primaryColor),
                          ))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class DialogExample extends StatelessWidget {
  Status? _status = Status.belum;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Ubah Status Catatan Ini'),
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: const Text("Belum Dikerjakan"),
                    leading: Radio<Status>(
                        value: Status.belum,
                        groupValue: _status,
                        onChanged: (Status? value) {
                          setState(() => _status = value);
                        },
                        activeColor: Theme.of(context).primaryColor),
                  ),
                  ListTile(
                    title: const Text("Sedang Dikerjakan"),
                    leading: Radio<Status>(
                        value: Status.sedang,
                        groupValue: _status,
                        onChanged: (Status? value) {
                          setState(() => _status = value);
                        },
                        activeColor: Theme.of(context).primaryColor),
                  ),
                  ListTile(
                    title: const Text("Siap Diambil"),
                    leading: Radio<Status>(
                        value: Status.sudah,
                        groupValue: _status,
                        onChanged: (Status? value) {
                          setState(() => _status = value);
                        },
                        activeColor: Theme.of(context).primaryColor),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: Text(
                          'OK',
                          style: TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      ),
                    ],
                  )
                ],
              );
            },
          ),
        ),
      ),
      label: Text(
        'CHANGE STATUS',
        style: TextStyle(color: Theme.of(context).primaryColor),
      ),
      icon: Icon(
        Icons.change_history,
        color: Theme.of(context).primaryColor,
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          padding: EdgeInsets.symmetric(vertical: 16.0)),
    );
  }
}
