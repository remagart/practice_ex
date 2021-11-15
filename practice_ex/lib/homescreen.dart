import 'package:flutter/material.dart';
import './account/accountscreen.dart';
import './market/markeetscreen.dart';
import './wallet/walletscreen.dart';

class HomeScrren extends StatefulWidget {
  HomeScrren({Key? key}) : super(key: key);

  @override
  _HomeScrrenState createState() => _HomeScrrenState();
}

class _HomeScrrenState extends State<HomeScrren> {
  int currentIdx = 1;
  final List _children = const [
    MarketScreen(),
    WalletScreen(),
    AccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/logo.png', height: 40),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
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
