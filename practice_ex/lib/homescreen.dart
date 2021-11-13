import 'package:flutter/material.dart';

class HomeScrren extends StatefulWidget {
  HomeScrren({Key? key}) : super(key: key);

  @override
  _HomeScrrenState createState() => _HomeScrrenState();
}

class _HomeScrrenState extends State<HomeScrren> {
  int currentIdx = 1;
  final List _children = [
    const Text('tes1t'),
    const Text('test2'),
    const Text('test3')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EX 練習'),
        backgroundColor: Colors.lightGreen,
      ),
      body: _children[currentIdx],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: currentIdx,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.calculate), label: '市場'),
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet_giftcard), label: '錢包'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), label: '帳戶'),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      currentIdx = index;
    });
  }
}
