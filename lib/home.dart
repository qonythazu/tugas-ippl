import 'package:anuy/pilihpesanan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text('Index 1: Business'),
    Text(
      'Index 2: School',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xff96CEB4))
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PilihPesanan(),
            ),
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: Color(0xffD9534F),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Belum Dikerjakan",
                style: TextStyle(color: Color(0xffD9534F)),
              ),
            ),
            Divider(
              color: Color(0xffD9534F),
            ),
            Container(
              height: 80.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  // 0xffD9534F
                  // 0xff96CEB4
                  // 0xffFFAD60
                  Notes(user : "User A", kerjaan : "Kemeja", noHp: "08xx-xxxx-67xx", warna : 0xffD9534F),
                  Notes(user : "User B", kerjaan : "Kemeja", noHp: "08xx-xxxx-67xx", warna : 0xff96CEB4),
                  Notes(user : "User C", kerjaan : "Kemeja", noHp: "08xx-xxxx-67xx", warna : 0xffFFAD60),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 8.0),
              child: Text(
                "Sedang Dikerjakan",
                style: TextStyle(color: Color(0xff96CEB4)),
              ),
            ),
            Container(
              child: Divider(
                color: Color(0xff96CEB4),
              ),
            ),
            Container(
              // margin: EdgeInsets.only(top: 20),
              height: 80.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Notes(user : "User D", kerjaan : "Kemeja", noHp: "08xx-xxxx-67xx", warna : 0xff96CEB4),
                  Notes(user : "User E", kerjaan : "Kemeja", noHp: "08xx-xxxx-67xx", warna : 0xffFFAD60),
                  Notes(user : "User F", kerjaan : "Kemeja", noHp: "08xx-xxxx-67xx", warna : 0xffD9534F),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 8.0),
              child: Text(
                "Siap Diambil",
                style: TextStyle(color: Color(0xffFFAD60)),
              ),
            ),
            Container(
              child: Divider(
                color: Color(0xffFFAD60),
              ),
            ),
            Container(
              // margin: EdgeInsets.only(top: 20),
              height: 80.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Notes(user : "User H", kerjaan : "Kemeja", noHp: "08xx-xxxx-67xx", warna : 0xffFFAD60),
                  Notes(user : "User I", kerjaan : "Kemeja", noHp: "08xx-xxxx-67xx", warna : 0xffD9534F),
                  Notes(user : "User J", kerjaan : "Kemeja", noHp: "08xx-xxxx-67xx", warna : 0xff96CEB4),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.view_timeline),
            label: 'Pemasukan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Pengaturan',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: null,
      ),
    );
  }
}

class Notes extends StatelessWidget {
  final String user;
  final String kerjaan;
  final String noHp;
  final int warna;

  const Notes({
    Key? key,
    required this.user,
    required this.kerjaan,
    required this.noHp,
    required this.warna
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      child: ElevatedButton(
        onPressed: () {
        
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user, style: TextStyle(color: Colors.white)),
              Text(kerjaan, style: TextStyle(color: Colors.white)),
              Text(noHp,
                  style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(warna),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(8.0)
          )
        ),
      ),
    );
  }
}
