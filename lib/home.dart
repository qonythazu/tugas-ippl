import 'package:sewnotes/detailpesanan.dart';
import 'package:sewnotes/kustomisasi.dart';
import 'package:sewnotes/pilihpesanan.dart';
import 'package:sewnotes/togglebutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 1;

  static const List<Widget> _widgetOptions = <Widget>[
    PemasukkanScreen(),
    HomeScreen(),
    PengaturanScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        backgroundColor: Colors.transparent,
        elevation: 0,
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
        child: const Icon(
          Icons.add,
          color: Color(0xffDFCDC3),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
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
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
        backgroundColor: Color(0xffDFCDC3),
      ),
    );
  }
}

class PemasukkanScreen extends StatefulWidget {
  const PemasukkanScreen({super.key});

  @override
  State<PemasukkanScreen> createState() => _PemasukkanScreenState();
}

class _PemasukkanScreenState extends State<PemasukkanScreen> {
  int _selectedIndexPemasukkan = 0;

  static const List<Widget> _widgetOptionsPemasukkan = <Widget>[
    PemasukkanMingguanScreen(),
    PemasukkanBulananScreen(),
  ];

  void _onItemTappedPemasukkan(int index) {
    setState(() {
      _selectedIndexPemasukkan = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: ToggleButton(
                width: 300.0,
                height: 30.0,
                toggleBackgroundColor: Theme.of(context).primaryColor,
                toggleBorderColor: Color(0xffDFCDC3),
                toggleColor: Color(0xffDFCDC3),
                activeTextColor: Theme.of(context).primaryColor,
                inactiveTextColor: Color(0xffDFCDC3),
                leftDescription: 'Mingguan',
                rightDescription: 'Bulanan',
                onLeftToggleActive: () {
                  _onItemTappedPemasukkan(0);
                },
                onRightToggleActive: () {
                  _onItemTappedPemasukkan(1);
                },
              ),
            ),
            _widgetOptionsPemasukkan.elementAt(_selectedIndexPemasukkan),
          ],
        ),
      ),
    );
  }
}

class PemasukkanMingguanScreen extends StatelessWidget {
  const PemasukkanMingguanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: Center(
                  child: Text(
                "Rp 550,000",
                style: TextStyle(
                    color: Color(0xffDFCDC3),
                    fontSize: 32,
                    fontWeight: FontWeight.w800),
              ))),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(8.0)),
            child: Row(
              children: [
                Text(
                  "Kemeja",
                  style: TextStyle(
                      color: Color(0xffDFCDC3),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  "Rp 150,000",
                  style: TextStyle(color: Color(0xffDFCDC3), fontSize: 16),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(8.0)),
            child: Row(
              children: [
                Text(
                  "Kemeja",
                  style: TextStyle(
                      color: Color(0xffDFCDC3),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  "Rp 100,000",
                  style: TextStyle(color: Color(0xffDFCDC3), fontSize: 16),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(8.0)),
            child: Row(
              children: [
                Text(
                  "Celana",
                  style: TextStyle(
                      color: Color(0xffDFCDC3),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  "Rp 150,000",
                  style: TextStyle(color: Color(0xffDFCDC3), fontSize: 16),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(8.0)),
            child: Row(
              children: [
                Text(
                  "Celana",
                  style: TextStyle(
                      color: Color(0xffDFCDC3),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  "Rp 150,000",
                  style: TextStyle(color: Color(0xffDFCDC3), fontSize: 16),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PemasukkanBulananScreen extends StatelessWidget {
  const PemasukkanBulananScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: Center(
                  child: Text(
                "Rp 1,550,000",
                style: TextStyle(
                    color: Color(0xffDFCDC3),
                    fontSize: 32,
                    fontWeight: FontWeight.w800),
              ))),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(8.0)),
            child: Row(
              children: [
                Text(
                  "Minggu 1",
                  style: TextStyle(
                      color: Color(0xffDFCDC3),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  "Rp 750,000",
                  style: TextStyle(color: Color(0xffDFCDC3), fontSize: 16),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(8.0)),
            child: Row(
              children: [
                Text(
                  "Minggu 2",
                  style: TextStyle(
                      color: Color(0xffDFCDC3),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  "Rp 250,000",
                  style: TextStyle(color: Color(0xffDFCDC3), fontSize: 16),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(8.0)),
            child: Row(
              children: [
                Text(
                  "Minggu 3",
                  style: TextStyle(
                      color: Color(0xffDFCDC3),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  "Rp 550,000",
                  style: TextStyle(color: Color(0xffDFCDC3), fontSize: 16),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(8.0)),
            child: Row(
              children: [
                Text(
                  "Minggu 4",
                  style: TextStyle(
                      color: Color(0xffDFCDC3),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  "Rp 0",
                  style: TextStyle(color: Color(0xffDFCDC3), fontSize: 16),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Belum Dikerjakan",
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),
          Divider(
            color: Theme.of(context).primaryColor,
          ),
          Container(
            height: 80.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Notes(
                    idPesanan: 1,
                    user: "User A",
                    kerjaan: "Kemeja",
                    noHp: "08xx-xxxx-67xx",
                    warna: 0xffc7dfc3),
                Notes(
                    idPesanan: 2,
                    user: "User B",
                    kerjaan: "Kemeja",
                    noHp: "08xx-xxxx-67xx",
                    warna: 0xffc7dfc3),
                Notes(
                    idPesanan: 3,
                    user: "User C",
                    kerjaan: "Kemeja",
                    noHp: "08xx-xxxx-67xx",
                    warna: 0xffc7dfc3),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 8.0),
            child: Text(
              "Sedang Dikerjakan",
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),
          Container(
            child: Divider(
              color: Theme.of(context).primaryColor,
            ),
          ),
          Container(
            // margin: EdgeInsets.only(top: 20),
            height: 80.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Notes(
                    idPesanan: 4,
                    user: "User D",
                    kerjaan: "Kemeja",
                    noHp: "08xx-xxxx-67xx",
                    warna: 0xffffc3d5df),
                Notes(
                    idPesanan: 5,
                    user: "User E",
                    kerjaan: "Kemeja",
                    noHp: "08xx-xxxx-67xx",
                    warna: 0xffffc3d5df),
                Notes(
                    idPesanan: 6,
                    user: "User F",
                    kerjaan: "Kemeja",
                    noHp: "08xx-xxxx-67xx",
                    warna: 0xffffc3d5df),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 8.0),
            child: Text(
              "Siap Diambil",
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),
          Container(
            child: Divider(
              color: Theme.of(context).primaryColor,
            ),
          ),
          Container(
            // margin: EdgeInsets.only(top: 20),
            height: 80.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Notes(
                    idPesanan: 7,
                    user: "User H",
                    kerjaan: "Kemeja",
                    noHp: "08xx-xxxx-67xx",
                    warna: 0xffdbc3df),
                Notes(
                    idPesanan: 8,
                    user: "User I",
                    kerjaan: "Kemeja",
                    noHp: "08xx-xxxx-67xx",
                    warna: 0xffdbc3df),
                Notes(
                    idPesanan: 9,
                    user: "User J",
                    kerjaan: "Kemeja",
                    noHp: "08xx-xxxx-67xx",
                    warna: 0xffdbc3df),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PengaturanScreen extends StatelessWidget {
  const PengaturanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                "Pengaturan",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Kustom()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 8.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.tune,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text("Kustomisasi",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 16)),
                        Spacer(),
                        Icon(
                          Icons.chevron_right,
                          color: Theme.of(context).primaryColor,
                        )
                      ],
                    ),
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 8.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.mail,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text(
                          "Email & Password",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 16),
                        ),
                        Spacer(),
                        Icon(
                          Icons.chevron_right,
                          color: Theme.of(context).primaryColor,
                        )
                      ],
                    ),
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 8.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text("Logout",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 16)),
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class Notes extends StatelessWidget {
  final int idPesanan;
  final String user;
  final String kerjaan;
  final String noHp;
  final int warna;

  const Notes({
    Key? key,
    required this.idPesanan,
    required this.user,
    required this.kerjaan,
    required this.noHp,
    required this.warna,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPesanan(idPesanan: idPesanan),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user,
                  style: TextStyle(color: Theme.of(context).primaryColor)),
              Text(kerjaan,
                  style: TextStyle(color: Theme.of(context).primaryColor)),
              Text(noHp,
                  style: TextStyle(color: Theme.of(context).primaryColor)),
            ],
          ),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(warna),
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                side: BorderSide(color: Theme.of(context).primaryColor))),
      ),
    );
  }
}
