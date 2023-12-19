import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';


class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Container(
        margin: context.isPhone?EdgeInsets.all(Get.width * 0.1) : EdgeInsets.all(Get.height * 0.1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
        child: Row(
          children: [
            context.isPhone? const SizedBox():
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                  color: Color.fromARGB(255, 71, 241, 159),),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(color: Colors.white, fontSize: 70),
                    ),
                    Text(
                      "Please Sign In",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Text(
                      "Start Journey With Us",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      context.isPhone?
                      const Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(color: Colors.grey, fontSize: 40),
                    ),
                    Text(
                      "Please Sign In",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    Text(
                      "Start Journey With Us",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ):const SizedBox(),
                    Image.asset("assets/images/login.png" , height: Get.height * 0.5,),
                    FloatingActionButton.extended(onPressed: () {}, label: const Text("Sign With Google"),
                    icon: const Icon(Icons.accessibility_new_rounded , color: Colors.white,),),
                  ],),
            ),),
            
          ],
        ),
      ),
    );
  }
}
