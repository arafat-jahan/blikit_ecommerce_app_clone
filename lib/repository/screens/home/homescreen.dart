import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:blinkit_app/repository/widgets/uihelper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    var data = [
      {"img": "image 50.png", "text": "Lights, Diyas \n & Candles"},
      {"img": "image 51.png", "text": "Diwali \n Gifts"},
      {"img": "image 52.png", "text": "Appliances  \n & Gadgets"},
      {"img": "image 53.png", "text": "Home \n & Living"}
    ];
    var categroy = [
      {
        "img": "image 54.png",
        "text": "Golden Glass\n Wooden Lid Candle (Oudh)"
      },
      {"img": "image 57.png", "text": "Royal Gulab Jamun\n By Bikano"},
      {
        "img": "image 63.png",
        "text": "Golden Glass\n Wooden Lid Candle (Oudh)"
      },
    ];
    var grocerykitchen = [
      {"img": "image 41.png", "text": "Vegetables & \nFruits"},
      {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
      {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
      {"img": "image 44 (1).png", "text": "Dairy, Bread & \nMilk"},
      {"img": "image 45 (1).png", "text": "Biscuits & \nBakery"}
    ];

    return Scaffold(
      body: Column(
        children: [
          // Header Section
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: const Color(0xFFEC0505),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Blinkit in",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: "bold",
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 5),
                      child: Text(
                        "16 minutes",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "bold",
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 5),
                      child: Row(
                        children: [
                          const Text(
                            "HOME ",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "- Sujal Dave, Ratanada, Jodhpur (Raj)",
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Profile Icon
              const Positioned(
                right: 20,
                bottom: 100,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),

              // Search Field
              Positioned(
                bottom: 30,
                left: 20,
                right: 20,
                child: UiHelper.CustomTextField(controller: searchController),
              ),
            ],
          ),

          Container(
            height: 1,
            width: double.infinity,
            color: Colors.white,
          ),
          // নিচে আরেকটা Container
          Container(
            height: 196,
            width: double.infinity, // এখানে height দিতে হবে
            color: Color(0xFFEC0505),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UiHelper.CustomImage(img: "image 60.png"),
                    UiHelper.CustomImage(img: "image 55.png"),
                    UiHelper.CustomText(
                        text: "Mega Sale",
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    UiHelper.CustomImage(img: "image 60.png"),
                    UiHelper.CustomImage(img: "image 55.png"),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 5, right: 5, top: 1, bottom: 1),
                          child: Container(
                            height: 108,
                            width: 86,
                            decoration: BoxDecoration(
                                color: Color(0XFFEAD3D3),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                UiHelper.CustomText(
                                    text: data[index]["text"].toString(),
                                    color: Color(0XFF000000),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10),
                                UiHelper.CustomImage(
                                    img: data[index]["img"].toString())
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: data.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          height: 108,
                          width: 93,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: UiHelper.CustomImage(
                              img: categroy[index]["img"].toString()),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                        ),
                        child: UiHelper.CustomText(
                            text: categroy[index]["text"].toString(),
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 8),
                      )
                    ],
                  );
                },
                itemCount: categroy.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
