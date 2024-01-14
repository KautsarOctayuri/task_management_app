import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_app/app/routes/app_pages.dart';
import 'package:task_management_app/app/utils/style/AppColor.dart';

class MyFriends extends StatelessWidget {
  const MyFriends({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'My Friends',
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 30),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () => Get.toNamed(Routes.FRIENDS),
                    child: Text(
                      'more',
                      style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 20),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: AppColors.primaryText,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 400,
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 8,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      itemBuilder: ((context, index) {
                        return Column(children: [
                          ClipRRect(
                          borderRadius:
                              BorderRadius.circular(100),
                          child: const Image(
                            image:
                             NetworkImage(
                                'https://cdn.idntimes.com/content-images/post/20230515/gambar-profil-wa-keren-41d3732660868cf4a36d801d1301f672.jpg'),
                          ),
                        ),
                        const Text('Alysia Jasmine', style: TextStyle(color: AppColors.primaryText),)
                        ],);
                      })),),
            ],
          ),
        ),
      ),
    );
  }
}
