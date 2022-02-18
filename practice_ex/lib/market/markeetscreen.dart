import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          RenderProperty(),
          RenderBanner(),
          RenderBtn(),
          RenderMarketList()
        ],
      ),
    );
  }
}

class RenderProperty extends StatelessWidget {
  const RenderProperty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('我的資產 (TWD)'),
          SizedBox(
            height: 16,
          ),
          SizedBox(
            width: double.infinity,
            child: Container(
              alignment: Alignment.centerLeft,
              child: Stack(
                children: [
                  Row(
                    children: const [
                      Text(
                        '119,683,207',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '+3.57%',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const Positioned(
                      right: 16,
                      child: Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: Colors.grey,
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RenderBanner extends StatelessWidget {
  const RenderBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Column(
          children: [
            Image.network(
              "https://appworks.tw/wp-content/uploads/2021/10/fb-banner_Wistron_EN-550x310.jpeg",
              fit: BoxFit.cover,
            ),
            Icon(Icons.keyboard_control_outlined)
          ],
        ),
      ),
    );
  }
}

class RenderBtn extends StatelessWidget {
  const RenderBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(16),
      child: Row(
        children: [
          RenderOneBtn(
            title: "快速買幣",
            myIcon: Icons.money,
          ),
          SizedBox(
            width: 8,
          ),
          RenderOneBtn(
            title: "新手專區",
            myIcon: Icons.vpn_key,
          ),
        ],
      ),
    );
  }
}

class RenderOneBtn extends StatelessWidget {
  String title = "";
  IconData myIcon = Icons.ac_unit;
  RenderOneBtn({Key? key, this.title = "", this.myIcon = Icons.ac_unit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClicked(title),
      child: Container(
          width: 153,
          height: 60,
          alignment: Alignment.center,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5.0,
                      offset: Offset(0, 4),
                      spreadRadius: 0.5,
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(myIcon),
                      SizedBox(
                        width: 8,
                      ),
                      Text(title)
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }

  void onClicked(msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}

class RenderMarketList extends StatelessWidget {
  const RenderMarketList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RenderMarketItem(),
          RenderMarketItem(
              url:
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Ethereum-icon-purple.svg/480px-Ethereum-icon-purple.svg.png",
              coinName: "ETH 以太幣",
              value: "98,859 TWD",
              rate: "-2.83%"),
          RenderMarketItem(
            url: "https://cf.shopee.tw/file/cf488a2ef66c70d4a6bce76f0a9dadfb",
            coinName: "USDT 泰達幣",
            value: "27.9991 TWD",
            rate: "+0.25%",
          ),
          RenderMarketItem(
            url: "https://company.bitoex.com/static/img/bitopro.5bf4554.png",
            coinName: "BITO 幣託幣",
            value: "2.0399",
            rate: "-1.70%",
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}

class RenderMarketItem extends StatelessWidget {
  String url = "";
  String coinName = "";
  String value = "";
  String rate = "";
  RenderMarketItem(
      {Key? key,
      this.url =
          "https://icons.iconarchive.com/icons/cjdowner/cryptocurrency-flat/1024/Bitcoin-BTC-icon.png",
      this.coinName = "BTC 比特幣",
      this.value = "1,513,500 TWD",
      this.rate = "+8.64%"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClicked(coinName),
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        width: 327,
        height: 87,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5.0,
                    offset: Offset(0, 4),
                    spreadRadius: 0.5,
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Container(
                  width: 327,
                  height: 87,
                  alignment: Alignment.centerLeft,
                  color: Colors.white,
                  child: Container(
                      width: 327,
                      height: 87,
                      color: Colors.white,
                      child: Stack(
                        children: [
                          Positioned(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.network(
                                      url,
                                      height: 30,
                                    ),
                                    SizedBox(width: 8),
                                    Text(coinName),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.network(
                                      "https://cdn-icons-png.flaticon.com/512/3553/3553968.png",
                                      height: 30,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            left: 25,
                            top: 16,
                          ),
                          Positioned(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(value),
                                SizedBox(
                                  height: 8,
                                ),
                                convertRate(rate),
                              ],
                            ),
                            right: 16,
                            top: 16 + 8,
                          )
                        ],
                      ))),
            )
          ],
        ),
      ),
    );
  }

  void onClicked(msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  Widget convertRate(r) {
    String first = r[0];
    Color color;
    if ((first == "+")) {
      color = const Color.fromARGB(0xFF, 0x00, 0xA0, 0x00);
    } else {
      color = const Color.fromARGB(0xFF, 0xFF, 0x00, 0x00);
    }

    return Text(
      r,
      style: TextStyle(color: color, fontWeight: FontWeight.bold),
    );
  }
}
