import 'package:blinkit_app/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  TextEditingController searchContorller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        UiHelper.CustomText(
                            text: "Blinkit in",
                            color: Color(0XFF000000),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontfamily: "bold"),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        UiHelper.CustomText(
                            text: " 16 minutes",
                            color: Color(0XFF000000),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontfamily: "bold")
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        UiHelper.CustomText(
                            text: " Home",
                            color: Color(0XFF000000),
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                        UiHelper.CustomText(
                            text: " -Arafat Jahan ,Dhaka Bangladesh",
                            color: Color(0XFF000000),
                            fontWeight: FontWeight.bold,
                            fontSize: 12)
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 10,
                bottom: 80,
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
                  bottom: 20,
                  left: 20,
                  child: UiHelper.CustomTextField(
                    controller: searchContorller,
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          UiHelper.CustomImage(img: "cart.png"),
          SizedBox(
            height: 30,
          ),
          UiHelper.CustomText(
              text: "Reordering will be easy",
              color: Color(0XFF000000),
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontfamily: "Bold"),
          SizedBox(
            height: 5,
          ),
          UiHelper.CustomText(
              text: "Items you order will show up here so you can buy",
              color: Color(0XFF000000),
              fontWeight: FontWeight.normal,
              fontSize: 10),
          UiHelper.CustomText(
              text: "them again easily",
              color: Color(0XFF000000),
              fontWeight: FontWeight.normal,
              fontSize: 10),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              UiHelper.CustomText(
                  text: "Bestsellers",
                  color: Color(0XFF000000),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ],
          ),
          SizedBox(height: 20,),
         Row(
           children: [
             SizedBox(height: 20,),
Stack(
  children: [
    UiHelper.CustomImage(img: "milk.png"),
    
    Center(child: Padding(padding:EdgeInsets.only(top: 98))),


  ],
)           ],
         )
        ],
      ),
    );
  }
}
