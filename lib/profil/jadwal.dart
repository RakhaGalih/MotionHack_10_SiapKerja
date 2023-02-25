import 'package:flutter/material.dart';
import 'package:motionhack/constant.dart';
import 'package:motionhack/profil/detail.dart';

class JadwalPage extends StatefulWidget {
  const JadwalPage({super.key});

  @override
  State<JadwalPage> createState() => _JadwalPageState();
}

class _JadwalPageState extends State<JadwalPage> {
  int _currentIndex = 0;
  List<List<JadwalTile>> jadwal = [
    [
      JadwalTile(
          title: 'Ngobrol Bisnis : Cara Membangun Startup dari nol',
          date: 'Minggu, 27 Februari 2023',
          person: 'Mr. Fluxion',
          soon: false,
          time: '19.00-20.00'),
      JadwalTile(
          title: 'Sharing Session bersama Alumni',
          date: 'Senin, 28 Februari 2023',
          person: 'Mr. X47',
          soon: true,
          time: '19.00-20.00'),
    ],
    [
      JadwalTile(
          title: 'Rahasia Menjadi Orang Sukses ala Bill Gates',
          date: 'Minggu, 5 Maret 2023',
          person: 'Mr. FLXNZZ',
          soon: true,
          time: '20.00-21.00'),
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MyWidget().appbar('Jadwal Sesi', context),
            MyWidget().tabbar('Akan datang', 'Selesai', _currentIndex, () {
              setState(() {
                _currentIndex = 0;
              });
            }, () {
              setState(() {
                _currentIndex = 1;
              });
            }),
            SingleChildScrollView(
              child: Column(
                  children: List.generate(
                jadwal[_currentIndex].length,
                (index) => Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Constant().grey_100))),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Text(jadwal[_currentIndex][index].title,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Constant().grey_700))),
                          (_currentIndex == 1)
                              ? const SizedBox(width: 88,
                                  height: 28,)
                              : Container(
                                  alignment: Alignment.center,
                                  width: 88,
                                  height: 28,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: (jadwal[_currentIndex][index].soon)
                                          ? Constant().grey_200
                                          : Constant().grey_900),
                                  child: Text(
                                      (jadwal[_currentIndex][index].soon)
                                          ? 'Soon'
                                          : 'On-going!',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: (jadwal[_currentIndex][index]
                                                  .soon)
                                              ? Constant().grey_400
                                              : Colors.white)),
                                )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/person.png',
                            height: 17,
                            width: 17,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: Text(
                            jadwal[_currentIndex][index].person,
                            style: TextStyle(
                                fontSize: 14, color: Constant().grey_700),
                          )),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/clock.png',
                            height: 17,
                            width: 17,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: Text(
                            jadwal[_currentIndex][index].date,
                            style: TextStyle(
                                fontSize: 14, color: Constant().grey_700),
                          )),
                          Text(
                            jadwal[_currentIndex][index].time,
                            style: TextStyle(
                                fontSize: 14, color: Constant().grey_500),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailJadwal(
                                            title: jadwal[_currentIndex][index]
                                                .title,
                                            person: jadwal[_currentIndex][index]
                                                .person,
                                            date: jadwal[_currentIndex][index]
                                                .date,
                                            time: jadwal[_currentIndex][index]
                                                .time,
                                            soon: jadwal[_currentIndex][index]
                                                .soon,
                                          )));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 44,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  border: Border.all(
                                      color: Constant().orange_500, width: 2)),
                              child: Text(
                                'Detail',
                                style: TextStyle(
                                    color: Constant().orange_500,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14),
                              ),
                            ),
                          )),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: Container(
                            alignment: Alignment.center,
                            height: 44,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: (jadwal[_currentIndex][index].soon)
                                    ? Constant().grey_200
                                    : Constant().orange_500),
                            child: Text(
                              'Join Call',
                              style: TextStyle(
                                  color: (jadwal[_currentIndex][index].soon)
                                      ? Constant().grey_400
                                      : Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14),
                            ),
                          ))
                        ],
                      )
                    ],
                  ),
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}

class JadwalTile {
  String title, person, date, time;
  bool soon;
  JadwalTile(
      {required this.title,
      required this.date,
      required this.person,
      required this.soon,
      required this.time});
}
