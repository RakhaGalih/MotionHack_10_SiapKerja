import "package:flutter/material.dart";
import "package:motionhack/constant.dart";
import 'package:motionhack/profil/profil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  Widget _bottomBar() {
    final List<BottomBarObject> bottomBar = [
      BottomBarObject(icon: Icons.home_rounded, title: 'Home'),
      BottomBarObject(icon: Icons.search_rounded, title: 'Cari'),
      BottomBarObject(icon: Icons.account_circle_rounded, title: 'Akun'),
    ];
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(border: Border(top: BorderSide(color: Constant().grey_100))),
      child: Row(
          children: List.generate(
        bottomBar.length,
        (index) => Expanded(
            child: GestureDetector(
          onTap: () {
            setState(() {
              _currentIndex = index;
            });
          },
          child: Column(
            children: [
              Icon(
                bottomBar[index].icon,
                color: (_currentIndex == index)
                    ? Constant().orange_500
                    : Constant().grey_500,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                bottomBar[index].title,
                style: TextStyle(
                    color: (_currentIndex == index)
                        ? Constant().orange_500
                        : Constant().grey_500,
                    fontWeight: FontWeight.w500,
                    fontSize: 10),
              )
            ],
          ),
        )),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: (_currentIndex != 0)
                  ? const ProfilAudience()
                  : Column(
                      children: const [
                        AppBarHome(),
                      ],
                    ),
            ),
            _bottomBar()
          ],
        ),
      ),
    );
  }
}

//appbar buat home
class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
      child: Row(
        children: [
          CircleAvatar(
            child: Image.asset(
              'assets/images/profil.png',
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
                  'Selamat Datang,',
                  style: TextStyle(fontSize: 14, color: Constant().grey_500),
                ),
                Text(
                  'Mas Supri',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Constant().grey_800),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
            width: 24,
            child: Image.asset('assets/images/notification.png'),
          )
        ],
      ),
    );
  }
}
