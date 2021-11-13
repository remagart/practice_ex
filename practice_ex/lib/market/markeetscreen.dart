import 'package:flutter/material.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    return Container(
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
        ));
  }
}

class RenderMarketList extends StatelessWidget {
  const RenderMarketList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [RenderMarketItem()],
      ),
    );
  }
}

class RenderMarketItem extends StatelessWidget {
  const RenderMarketItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                                    "https://icons.iconarchive.com/icons/cjdowner/cryptocurrency-flat/1024/Bitcoin-BTC-icon.png",
                                    height: 30,
                                  ),
                                  SizedBox(width: 8),
                                  Text("BTC 比特幣"),
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
                              Text("1,513,500 TWD"),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "+8.64%",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              )
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
    );
  }
}
