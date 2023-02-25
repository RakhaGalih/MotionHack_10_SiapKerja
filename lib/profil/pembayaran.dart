import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constant.dart';

class Pembayaran extends StatefulWidget {
  const Pembayaran({super.key});

  @override
  State<Pembayaran> createState() => _PembayaranState();
}

class _PembayaranState extends State<Pembayaran> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MyWidget().appbar('Pembayaran', context),
            MyWidget().tabbar('Menunggu', 'Selesai', _currentIndex, () {
              setState(() {
                _currentIndex = 0;
              });
            }, () {
              setState(() {
                _currentIndex = 1;
              });
            }),
          ],
        ),
      ),
    );
  }
}