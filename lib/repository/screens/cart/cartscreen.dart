import 'package:flutter/material.dart';
import '../../widgets/uihelper.dart';

class CartScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 🔽 নিচের অংশের মূল কনটেন্ট (scrollable বা fixed)
          Column(
            children: [
              SizedBox(height: 40),

              Container(
                height: 190,
                width: double.infinity,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 190,
                          width: double.infinity,
                          color: Color(0XFFF7CB45),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 30),
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: UiHelper.CustomText(
                                  text: "Blinkit in",
                                  color: Color(0XFF000000),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontfamily: "bold",
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: UiHelper.CustomText(
                                  text: "16 minutes",
                                  color: Color(0XFF000000),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontfamily: "bold",
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    UiHelper.CustomText(
                                      text: "HOME ",
                                      color: Color(0XFF000000),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                    UiHelper.CustomText(
                                      text: "- Sujal Dave, Ratanada, Jodhpur (Raj)",
                                      color: Color(0XFF000000),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
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
                        Positioned(
                          bottom: 30,
                          left: 20,
                          child: UiHelper.CustomTextField(
                            controller: searchController,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              UiHelper.CustomImage(img: "cart.png"),
              SizedBox(height: 20),
              UiHelper.CustomText(
                text: "Reordering will be easy",
                color: Color(0XFF000000),
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontfamily: "bold",
              ),
              UiHelper.CustomText(
                text: "Items you order will show up here so you can buy",
                color: Color(0XFF000000),
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              UiHelper.CustomText(
                text: "them again easily.",
                color: Color(0XFF000000),
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),

              SizedBox(height: 30),

              Padding(
                padding: EdgeInsets.only(left: 20),
                child: UiHelper.CustomText(
                  text: "Bestsellers",
                  color: Color(0XFF000000),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontfamily: "bold",
                ),
              ),

              SizedBox(height: 10),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          UiHelper.CustomImage(img: "milk.png"),
                          Positioned(
                            top: 95,
                            left: 65,
                            child: UiHelper.CustomButton(() {}),
                          ),
                        ],
                      ),
                      SizedBox(width: 15),
                      Stack(
                        children: [
                          UiHelper.CustomImage(img: "potato.png"),
                          Positioned(
                            top: 95,
                            left: 65,
                            child: UiHelper.CustomButton(() {}),
                          ),
                        ],
                      ),
                      SizedBox(width: 15),
                      Stack(
                        children: [
                          UiHelper.CustomImage(img: "tomato.png"),
                          Positioned(
                            top: 95,
                            left: 65,
                            child: UiHelper.CustomButton(() {}),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),

          // 🔼 Stack-এর উপরে overlay করতে চাইলে এখানে আলাদা Positioned widget রাখতে পারো
          // উদাহরণ: App-wide floating button, banner, loading indicator ইত্যাদি
        ],
      ),
    );
  }
}
