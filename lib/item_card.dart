import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  String bestImage;
  String luxuryImage;
  ItemCard({super.key, required this.bestImage, required this.luxuryImage});

  @override
  State<ItemCard> createState() => _HotelsPageState();
}

class _HotelsPageState extends State<ItemCard> {
  PageController controller = PageController();
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          controller: controller,
          onPageChanged: (int index) {
            setState(() {
              selected = index;
            });
          },
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    Stack(alignment: Alignment.bottomCenter, children: [
                      Container(
                        height: 300,
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwIK0O6DbRcXb5pzm2poPMuUsS434-REaqqA&s",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Container(

                            height: 50,

                            child: const Center(
                              child: Text(
                                "What  of hotel you need!",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(30),
                            padding: EdgeInsets.all(20),
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  icon: Icon(Icons.person_search_outlined),
                                  labelText: "Search"),
                            ),
                          ),
                        ],
                      )
                    ]),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Best hotels",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              _bestHotels(
                                  bestImage:
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQr_ipwGuR5qXU3_9sHz4xDrItG5ikf-Pm0YQ&s"),
                              _bestHotels(
                                  bestImage:
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNZArc_6nQ7GwTZgraS-aVCv0Ubm8ZjXZHhw&s"),
                              _bestHotels(
                                  bestImage:
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS40_vLNL-Ahg6m5wcsbjoQ49fB60ghgkuqnw&s"),
                              _bestHotels(
                                  bestImage:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiCgJ5pckSYv1bj2CQKf6C7Jv8_7EbbvgAAw&s"),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Luxury hotels",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              _luxuryHotels(
                                  luxuryImage:
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ47QKigyqyqwSk4izMGohWxOXWWBj_ATeupw&s"),
                              _luxuryHotels(
                                  luxuryImage:
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB0sYRNsS-NnUe78ZS21yD2XYwKpVEdlBH6g&s"),
                              _luxuryHotels(
                                  luxuryImage:
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMdf-qWzKVfHaemITerhBiuyH51_WTNl6OYw&s"),
                              _luxuryHotels(
                                  luxuryImage:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEBOhiKDgxV0DE2g_pTq-f6tYJThwPWvZ7vg&s"),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              color: Colors.red,
              child: const Center(
                child: Text("Hotels Page one"),

              ),
            ),
            Container(
              color: Colors.pink,
              child: const Center(
                child: Text("Hotels Page two"),
              ),
            ),
            Container(
              color: Colors.teal,
              child: const Center(
                child: Text("Hotels Page three"),
              ),
            ),
            Container(
              color: Colors.purple,
              child: const Center(

                child: Text("Hotels Page for"),

              ),
            ),
          ]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int position) {
          setState(() {
            selected = position;
            controller.jumpToPage(position);
          });
        },
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.black12,
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.search),
            label: "search",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.shop),
            label: "shop",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.favorite_border),
            label: "like",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.person),
            label: "profile",
          ),
        ],
      ),
    );
  }
}

Widget _bestHotels({
  bestImage,
}) {
  return Padding(
    padding: EdgeInsets.only(left: 20),
    child: Container(
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: NetworkImage(bestImage), fit: BoxFit.cover)),
    ),
  );
}

Widget _luxuryHotels({luxuryImage}) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 20,
    ),
    child: Container(
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: NetworkImage(luxuryImage), fit: BoxFit.cover)),
    ),
  );
}
