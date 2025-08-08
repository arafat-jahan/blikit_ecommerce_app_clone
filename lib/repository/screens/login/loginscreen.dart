import 'package:blinkit_app/repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:blinkit_app/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            UiHelper.CustomImage(img: "Blinkit Onboarding Screen.png"),
            SizedBox(height: 30),
            UiHelper.CustomImage(img: "image 10.png"),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustomText(
                text: "This is Blinkit App ",
                color: Color(0XFF000000),
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontfamily: "bold"),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0XFFFFFFFF)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    UiHelper.CustomText(
                        text: "Arafat",
                        color: Color(0XFF000000),
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                    SizedBox(
                      height: 5,
                    ),
                    UiHelper.CustomText(
                        text: "0133444555",
                        color: Color(0XFF9C9C9C),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontfamily: "bold"),
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFFE23744),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            UiHelper.CustomText(
                                text: "Login with",
                                color: Color(0XFFFFFFFF),
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                fontfamily: "bold"),
                            SizedBox(
                              height: 5,
                            ),
                            UiHelper.CustomImage(img: "image 9.png"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    UiHelper.CustomText(
                        text:
                            "Access your saved addresses from Zomato automatically!",
                        color: Color(0XFF9C9C9C),
                        fontWeight: FontWeight.normal,
                        fontSize: 10),
                    SizedBox(
                      height: 15,
                    ),
                    UiHelper.CustomText(
                        text: "or login with phone number",
                        color: Color(0X269237),
                        fontWeight: FontWeight.normal,
                        fontSize: 14),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
