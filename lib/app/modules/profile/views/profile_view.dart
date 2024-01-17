import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task_management_app/app/routes/app_pages.dart';
import 'package:task_management_app/app/utils/style/AppColor.dart';
import 'package:task_management_app/app/utils/widget/SideBar.dart';
import 'package:task_management_app/app/utils/widget/header.dart';
import 'package:task_management_app/app/utils/widget/myTask.dart';
import 'package:task_management_app/app/utils/widget/profilwidget.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SideBar(),
      backgroundColor: AppColors.primaryBg,
      body: Row(
        children: [
          !context.isPhone
              ? const Expanded(
                  flex: 2,
                  child: SideBar(),
                )
              : const SizedBox(),
          Expanded(
            flex: 15,
            child: Column(children: [
              !context.isPhone
                  ? const header()
                  : Container(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              _drawerKey.currentState!.openDrawer();
                            },
                            icon: const Icon(
                              Icons.menu,
                              color: AppColors.primaryText,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Task Management",
                                style: TextStyle(
                                    fontSize: 20, color: AppColors.primaryText),
                              ),
                              Text(
                                "Manage tas make easy with friends",
                                style: TextStyle(
                                    fontSize: 14, color: AppColors.primaryText),
                              ),
                            ],
                          ),
                          const Spacer(),
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
                    Text("Sign Out", style: TextStyle(color: AppColors.primaryText,fontSize: 16), ),
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
              //content
              Expanded(
                child: Container(
                  padding: !context.isPhone
                        ? const EdgeInsets.all(50)
                        : const EdgeInsets.all(20),
                    margin: !context.isPhone
                        ? const EdgeInsets.all(10)
                        : const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      borderRadius: !context.isPhone
                          ? BorderRadius.circular(50)
                          : BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ProfileW(),
                      const Text(
                        'My Task',
                        style: TextStyle(
                            color: AppColors.primaryText, fontSize: 30),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: Get.height * 0.25,
                        child: const MyTask(),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

