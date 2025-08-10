import 'package:flutter/material.dart';
import 'package:blinkit_app/repository/widgets/uihelper.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Scaffold(
      body: Column(
        children: [
          // 🟡 Header Section
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: const Color(0xFFF7CB45),
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

          const SizedBox(height: 20),

          // 🟡 Empty Cart Image & Text
          UiHelper.CustomImage(img: "cart.png"),
          const SizedBox(height: 30),
          UiHelper.CustomText(
            text: "Reordering will be easy",
            color: const Color(0XFF000000),
            fontWeight: FontWeight.bold,
            fontSize: 16,
            fontfamily: "Bold",
          ),
          const SizedBox(height: 5),
          UiHelper.CustomText(
            text: "Items you order will show up here so you can buy",
            color: const Color(0XFF000000),
            fontWeight: FontWeight.normal,
            fontSize: 10,
          ),
          UiHelper.CustomText(
            text: "them again easily",
            color: const Color(0XFF000000),
            fontWeight: FontWeight.normal,
            fontSize: 10,
          ),
          const SizedBox(height: 30),

          // 🟡 Bestsellers Title
          Row(
            children: [
              const SizedBox(width: 20),
              UiHelper.CustomText(
                text: "Bestsellers",
                color: const Color(0XFF000000),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ],
          ),
          const SizedBox(height: 20),

          // 🟡 Bestseller Items
          Row(
            children: [
              const SizedBox(width: 20),
              Stack(
                children: [
                  UiHelper.CustomImage(img: "milk.png"),
                  Padding(
                    padding: const EdgeInsets.only(top: 98, left: 65),
                    child: Container(), // Placeholder for overlay
                  ),
                ],
              ),
              const SizedBox(width: 15),
              Stack(
                children: [
                  UiHelper.CustomImage(img: "potato.png"),
                  Padding(
                    padding: const EdgeInsets.only(top: 98, left: 65),
                    child: Container(),
                  ),
                ],
              ),
              const SizedBox(width: 15),
              Stack(
                children: [
                  UiHelper.CustomImage(img: "tomato.png"),
                  Padding(
                    padding: const EdgeInsets.only(top: 98, left: 65),
                    child: Container(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
