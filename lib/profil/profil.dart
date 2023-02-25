import 'package:flutter/material.dart';
import 'package:motionhack/profil/jadwal.dart';
import 'package:motionhack/profil/pembayaran.dart';

import '../constant.dart';

class ProfilAudience extends StatelessWidget {
  const ProfilAudience({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Menu',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 24,
            ),
            const ProfilMenu(),
            const SizedBox(
              height: 12,
            ),
            ProfilListTile(
                isi: const Text(
              'Aktifkan mode kreator',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            )),
            const SizedBox(
              height: 12,
            ),
            ProfilListTile(
                isi: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Saldo akun',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                Text('Rp240.000',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Constant().grey_500)),
              ],
            )),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Expanded(
                  child: ProfilContainer(
                      isi: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.bookmark_rounded,
                        color: Constant().orange_500,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text('Disukai',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500))
                    ],
                  )),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const JadwalPage()));
                    },
                    child: ProfilContainer(
                        isi: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.calendar_today_rounded,
                          color: Constant().orange_500,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text('Jadwal sesi',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500))
                      ],
                    )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Pembayaran()));
                    },
                    child: ProfilContainer(
                        isi: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.receipt_long_rounded,
                          color: Constant().orange_500,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text('Pembayaran',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500))
                      ],
                    )),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: ProfilContainer(
                      isi: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.download_rounded,
                        color: Constant().orange_500,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text('Sesi di download',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500))
                    ],
                  )),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            ProfilListTile(
                isi: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Nama',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                Text('Mas Supri',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Constant().grey_500)),
              ],
            )),
            const SizedBox(
              height: 12,
            ),
            ProfilListTile(
                isi: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Nomor HP',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                Text('088888888888',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Constant().grey_500)),
              ],
            )),
            const SizedBox(
              height: 12,
            ),
            ProfilListTile(
                isi: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Email',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                Text('anjayani@gmail.com',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Constant().grey_500)),
              ],
            )),
            const SizedBox(
              height: 12,
            ),
            ProfilListTile(
              isi: const Text('Password',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
            ),
            const SizedBox(
              height: 12,
            ),
            ProfilContainer(
              isi: Row(
                children: [
                  Text('Keluar',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Constant().danger_500)),
                  const Spacer()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//profil menu di profil
class ProfilMenu extends StatelessWidget {
  const ProfilMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfilListTile(
      isi: Row(
        children: [
          Image.asset(
            'assets/images/profil.png',
            height: 50,
            width: 50,
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mas Supri',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Constant().grey_900),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Audiens',
                  style: TextStyle(fontSize: 12, color: Constant().grey_500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//list tile untuk profil
class ProfilListTile extends StatelessWidget {
  late Widget isi;
  ProfilListTile({super.key, required this.isi});

  @override
  Widget build(BuildContext context) {
    return ProfilContainer(
      isi: Row(
        children: [
          Expanded(child: isi),
          Icon(
            Icons.chevron_right_rounded,
            size: 20,
            color: Constant().grey_500,
          )
        ],
      ),
    );
  }
}

//container abu-abu untuk profil
class ProfilContainer extends StatelessWidget {
  late Widget isi;
  ProfilContainer({super.key, required this.isi});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Constant().grey_50, borderRadius: BorderRadius.circular(4)),
        child: isi);
  }
}

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({super.key});

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

//bottom bar wigdet
class _MyBottomBarState extends State<MyBottomBar> {
  final List<BottomBarObject> _bottomBar = [
    BottomBarObject(icon: Icons.home_rounded, title: 'Home'),
    BottomBarObject(icon: Icons.search_rounded, title: 'Cari'),
    BottomBarObject(icon: Icons.account_circle_rounded, title: 'Akun'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Row(
          children: List.generate(
        _bottomBar.length,
        (index) => Expanded(
            child: Column(
          children: [
            Icon(
              _bottomBar[index].icon,
              color: Constant().grey_500,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              _bottomBar[index].title,
              style: TextStyle(
                  color: Constant().grey_500,
                  fontWeight: FontWeight.w500,
                  fontSize: 10),
            )
          ],
        )),
      )),
    );
  }
}

class BottomBarObject {
  IconData icon;
  String title;
  BottomBarObject({required this.icon, required this.title});
}
