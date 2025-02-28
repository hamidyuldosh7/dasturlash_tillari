import 'package:flutter/material.dart';

class CarsPage extends StatefulWidget {
  String image;

  CarsPage({super.key, required this.image});

  @override
  State<CarsPage> createState() => _CarsPageState();
}

class _CarsPageState extends State<CarsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Favorite Cars",
            style: TextStyle(
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.blue,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_shopping_cart,
                color: Colors.blue,
              ),
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.white,
            labelStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            dividerHeight: 0,
            indicatorPadding: const EdgeInsets.only(left: 10, right: 10),
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(100)),
            tabs: const [
              Tab(
                text: "All page  ",
              ),
              Tab(
                text: "Red page",
              ),
              Tab(
                text: "Blue page",
              ),
              Tab(
                text: "Green page",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          ListView(
            children: [
              Column(
                children: [
                  _cars(
                      image:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMTyr_4oPJUzqL-0MpDMICAY6zSw7-Fhheqw&s"),
                  _cars(
                      image:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiMlgyNarMZOQejiumADuQUjqeWghQkav1SQ&s"),
                  _cars(
                      image:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7V199whNdhz8A2RKtC2jjLotlHd5ayKUSVQ&s"),
                  _cars(
                      image:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReKrrVdIRtPUK6TEkeJh8aJyBfdVuQwL7YOw&s"),
                  _cars(
                      image:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeH4iQ60DaRx5TTEAp37LhJOzGI5abo7LrIA&s"),
                  _cars(
                      image:
                          "https://plus.unsplash.com/premium_photo-1664304752635-3e0d8d8185e3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8Y2Fyc3xlbnwwfHwwfHx8MA%3D%3D"),
                  _cars(
                      image:
                          "https://plus.unsplash.com/premium_photo-1664303619183-6effc8cf1c01?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y2Fyc3xlbnwwfHwwfHx8MA%3D%3D"),
                ],
              )
            ],
          ),
          ListView(
            children: const [
              Center(
                  child: Text(
                "Red page",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.red),
              ))
            ],
          ),
          ListView(
            children: const [
              Center(
                  child: Text(
                "Blue page",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ))
            ],
          ),
          ListView(
            children: const [
              Center(
                  child: Text(
                "Green page",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ))
            ],
          ),
        ]),
      ),
    );
  }
}

Widget _cars({image}) {
  return Stack(children: [
    Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 280,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image:
              DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
    ),
    const Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Electric Cars",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
          Text(
            "Electric cars my favorite",
            style: TextStyle(
                color: Colors.white54,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 150,
          ),
          Text(
            "300000\$",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  ]);
}
