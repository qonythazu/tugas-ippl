import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

enum Status {belum, sedang, sudah}

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
                            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0)
                          ),
                          onPressed: () {

                          }, 
                          icon: const Icon(Icons.delete, color: Color(0xffD9534F),), 
                          label: const Text("DELETE", style: TextStyle(color: Color(0xffD9534F)),)
                        ),
                         ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0)
                          ),
                          onPressed: () {

                          }, 
                          icon: const Icon(Icons.edit, color: Color(0xffFFAD60),), 
                          label: const Text("EDIT", style: TextStyle(color: Color(0xffFFAD60)),)
                        )
                      ],
                    ),
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

class DialogExample extends StatelessWidget {
  Status? _status = Status.belum;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Ubah Status Catatan Ini'),
          actions: <Widget>[
            Column(
              children: [
                ListTile(
                  title: const Text("Belum Dikerjakan"),
                  leading: Radio<Status>(
                    value: Status.belum,
                    groupValue: _status,
                    onChanged: (Status? value) {
                      
                    },
                    activeColor: Color(0xff96CEB4)
                  ),
                ),
                ListTile(
                  title: const Text("Sedang Dikerjakan"),
                  leading: Radio<Status>(
                    value: Status.sedang,
                    groupValue: _status,
                    onChanged: (Status? value) {
                      
                    },
                    activeColor: Color(0xff96CEB4)
                  ),
                ),
                ListTile(
                  title: const Text("Siap Diambil"),
                  leading: Radio<Status>(
                    value: Status.sudah,
                    groupValue: _status,
                    onChanged: (Status? value) {
                      
                    },
                    activeColor: Color(0xff96CEB4)
                  ),
                ),
                Row(
                  children: [ 
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel', style: TextStyle(color: Color(0xffD9534F)),),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK', style: TextStyle(color: Color(0xffFFAD60)),),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      label: const Text('CHANGE STATUS', style: TextStyle(color: Color(0xff96CEB4)),),
      icon: Icon(Icons.change_history, color: Color(0xff96CEB4),),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        elevation: 0,
        padding: EdgeInsets.symmetric(vertical: 16.0)
      ),
    );
  }
}
