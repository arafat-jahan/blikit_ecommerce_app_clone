import 'package:blinkit_app/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class PrintScreen extends StatelessWidget {
  PrintScreen({super.key});

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFBF0CE),
      body: Column(
        children: [
          const SizedBox(height: 40),

          // Header Section
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: const Color(0XFFF7CB45),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: UiHelper.CustomText(
                        text: "Blinkit in",
                        color: const Color(0XFF000000),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontfamily: "bold",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: UiHelper.CustomText(
                        text: "16 minutes",
                        color: const Color(0XFF000000),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontfamily: "bold",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          UiHelper.CustomText(
                            text: "HOME ",
                            color: const Color(0XFF000000),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          Expanded(
                            child: UiHelper.CustomText(
                              text: "- Sujal Dave, Ratanada, Jodhpur (Raj)",
                              color: const Color(0XFF000000),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
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

              // Search Bar
              Positioned(
                bottom: 30,
                left: 20,
                right: 20,
                child: UiHelper.CustomTextField(
                  controller: searchController,
                ),
              ),
            ],
          ),

          const SizedBox(height: 30),

          // Title
          UiHelper.CustomText(
            text: "Print Store",
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),

          const SizedBox(height: 5),

          UiHelper.CustomText(
            text: "Blinkit ensures secure prints at every stage",
            color: const Color(0XFF9C9C9C),
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),

          const SizedBox(height: 40),

          // Info Card with Image
          Stack(
            children: [
              Container(
                height: 163,
                width: 361,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UiHelper.CustomText(
                      text: "Documents",
                      color: const Color(0XFF000000),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        UiHelper.CustomImage(img: "star.png"),
                        const SizedBox(width: 5),
                        UiHelper.CustomText(
                          text: "Price starting at rs 3/page",
                          color: const Color(0XFF9C9C9C),
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        UiHelper.CustomImage(img: "star.png"),
                        const SizedBox(width: 5),
                        UiHelper.CustomText(
                          text: "Paper quality: 70 GSM",
                          color: const Color(0XFF9C9C9C),
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        UiHelper.CustomImage(img: "star.png"),
                        const SizedBox(width: 5),
                        UiHelper.CustomText(
                          text: "Single side prints",
                          color: const Color(0XFF9C9C9C),
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 40,
                      width: 125,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Upload Files",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Overlay Image
              Positioned(
                right: 20,
                bottom: 40,
                child: UiHelper.CustomImage(img: "document.png"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
