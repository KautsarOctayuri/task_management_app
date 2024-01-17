import 'package:flutter/material.dart';
import 'package:task_management_app/app/utils/style/AppColor.dart';
import 'package:get/get.dart';


class ProfileW extends StatelessWidget {
  const ProfileW({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: !context.isPhone ? const Row(
        children: [
          Expanded(
            flex: 1,
            child: ClipRRect(
              child: CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 120,
                foregroundImage: NetworkImage(
                    'https://cdn.idntimes.com/content-images/post/20230515/gambar-profil-wa-keren-41d3732660868cf4a36d801d1301f672.jpg'),
              ),
            ),
          ),
          //SizedBox(width: 20,),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Alicia Jasmine',
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 40),
                ),
                Text(
                  'alicia@gmail.com',
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ):  const Center(
        child: Column(
          children: [
            SizedBox(height: 40,),
            ClipRRect(
              child: CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 120,
                foregroundImage: NetworkImage(
                    'https://cdn.idntimes.com/content-images/post/20230515/gambar-profil-wa-keren-41d3732660868cf4a36d801d1301f672.jpg'),
              ),
            ),
            SizedBox(height: 20,),
            Text(
              'Alicia Jasmine',
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 40),
            ),
            Text(
              'alicia@gmail.com',
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 16),
            ),
          ],
        ),
      )  ,
    );
  }
}
