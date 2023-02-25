import 'package:flutter/material.dart';

class Constant {
  Color orange_50 = const Color(0xfffdf0eb);
  Color orange_100 = const Color(0xfffad1c1);
  Color orange_200 = const Color(0xfff8baa3);
  Color orange_300 = const Color(0xfff49b79);
  Color orange_400 = const Color(0xfff2885f);
  Color orange_500 = const Color(0xffef6a37);
  Color orange_600 = const Color(0xffd96032);
  Color orange_700 = const Color(0xffaa4b27);
  Color orange_800 = const Color(0xff833a1e);
  Color orange_900 = const Color(0xff642d17);
  Color grey_50 = const Color(0xFFF0F0F0);
  Color grey_100 = const Color(0xFFE2E2E2);
  Color grey_200 = const Color(0xFFC6C6C6);
  Color grey_300 = const Color(0xFFABABAB);
  Color grey_400 = const Color(0xFF919191);
  Color grey_500 = const Color(0xFF777777);
  Color grey_600 = const Color(0xFF5E5E5E);
  Color grey_700 = const Color(0xFF474747);
  Color grey_800 = const Color(0xFF1B1B1B);
  Color grey_900 = const Color(0xFF1B1B1B);
  Color danger_500 = const Color(0xFFEE4444);
}

class MyWidget {
  //appbar
  Widget appbar(String title, BuildContext context) {
    return SizedBox(
      height: 48,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_rounded)),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }

//tab bar
  Widget tabbar(String title1, title2, int index, void Function() onTap1,
      void Function() onTap2) {
    return SizedBox(
      height: 45,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Constant().grey_100))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onTap: onTap1,
              child: Container(
                decoration: (index == 0)
                    ? BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Constant().orange_500, width: 2)))
                    : const BoxDecoration(),
                child: Center(
                  child: Text(
                    title1,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: (index == 0)
                            ? Constant().grey_900
                            : Constant().grey_500),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: onTap2,
              child: Container(
                decoration: (index == 1)
                    ? BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Constant().orange_500, width: 2)))
                    : const BoxDecoration(),
                child: Center(
                  child: Text(title2,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: (index == 1)
                              ? Constant().grey_900
                              : Constant().grey_500)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
