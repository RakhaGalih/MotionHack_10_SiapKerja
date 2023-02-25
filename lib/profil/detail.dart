import 'package:flutter/material.dart';
import 'package:motionhack/constant.dart';

class DetailJadwal extends StatelessWidget {
  String title, person, date, time;
  bool soon;
  DetailJadwal({
    super.key,
    required this.title,
    required this.person,
    required this.date,
    required this.time,
    required this.soon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          MyWidget().appbar('Detail Jadwal', context),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Image.asset('assets/images/image.png'),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 70,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Constant().orange_400),
                            child: const Text('Edukasi',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 70,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Constant().orange_400),
                            child: const Text('Bisnis',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white)),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(title,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Constant().grey_900)),
                      const SizedBox(
                        height: 5,
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
                            '$date • $time',
                            style: TextStyle(
                                fontSize: 14, color: Constant().grey_700),
                          )),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(children: [
                        CircleAvatar(
                          child: Image.asset(
                            'assets/images/robot.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pembiraca',
                                style: TextStyle(
                                    fontSize: 14, color: Constant().grey_700),
                              ),
                              Text(
                                '$person • Konten Kreator',
                                style: TextStyle(
                                    fontSize: 14, color: Constant().grey_700),
                              ),
                            ],
                          ),
                        ),
                      ]),
                      const SizedBox(
                        height: 15,
                      ),
                      Text('Deskripsi',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Constant().grey_900)),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Dalam acara ini, Anda akan diajarkan cara membangun bisnis startup dari awal hingga sukses. Anda akan belajar dari sang ahli bisnis yang sudah berpengalaman dan berhasil membangun startupnya sendiri. Anda juga akan mendapatkan kesempatan untuk bertemu secara online dengan ahlinya yang mungkin dapat membantu Anda dalam membangun bisnis Anda.',
                        style:
                            TextStyle(fontSize: 14, color: Constant().grey_700),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: (soon)
                                ? Constant().grey_200
                                : Constant().orange_500),
                        child: Text(
                          'Join Call',
                          style: TextStyle(
                              color:
                                  (soon) ? Constant().grey_400 : Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 14),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
