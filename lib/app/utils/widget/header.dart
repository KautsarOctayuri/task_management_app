import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task_management_app/app/routes/app_pages.dart';
import 'package:task_management_app/app/utils/style/AppColor.dart';

class header extends StatelessWidget {
  const header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: Get.height * 0.1,
        child: Padding(
          padding: 
          const EdgeInsets.only(left: 40,right: 40, top: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Column(
               // mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Task Management", style: TextStyle(fontSize: 30,color: AppColors.primaryText),),
                  Text("Manage tas make easy with friends", style: TextStyle(fontSize: 16,color: AppColors.primaryText),),
                ],
              ),
              const Spacer(flex: 1,),
              Expanded(
                flex: 1,
                child: TextField(decoration: InputDecoration
              (filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.only(left: 40 ,  right: 10),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.white)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.blue)
              ),
              prefixIcon: const Icon(Icons.search , color: AppColors.primaryText,),
              hintText: "Search"
              ),
              ),
              ),
              const SizedBox(width: 20,),
              const Icon(Icons.notifications,color: AppColors.primaryText, size: 30,),
              const SizedBox(width: 20,),
              GestureDetector(
                onTap: () {
                  Get.defaultDialog(
                    title: "Sign Out",
                    content: const Text("Are you sure want to exit ?"),
                    cancel : ElevatedButton(onPressed: ()=>Get.back(), child: const Text("Cancel")),
                    confirm: ElevatedButton(onPressed: ()=>Get.toNamed(Routes.LOGIN), child: const Text("Sign Out"))
                    );
                  
                },
                child: const Row(
                  children: [
                    Text("Sign Out", style: TextStyle(color: AppColors.primaryText,fontSize: 20), ),
                    SizedBox(width: 5,),
                Icon(Icons.logout , 
                color:AppColors.primaryText,
                size: 25,
                ),
                  ],
                ),
              ),
              
            ],
          ),
        ),
        );
  }
}
