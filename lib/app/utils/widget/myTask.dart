
import 'package:flutter/material.dart';


import 'package:task_management_app/app/utils/style/AppColor.dart';
class MyTask extends StatelessWidget {
  const MyTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        clipBehavior: Clip.antiAlias,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.cardBg,
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://cdn.idntimes.com/content-images/post/20230515/gambar-profil-wa-keren-41d3732660868cf4a36d801d1301f672.jpg'),
                      ),
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://cdn.idntimes.com/content-images/post/20230515/gambar-profil-wa-keren-41d3732660868cf4a36d801d1301f672.jpg'),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 25,
                      width: 80,
                      color: AppColors.primaryBg,
                      child: const Center(
                        child: Text(
                          '100%',
                          style: TextStyle(
                            color:
                                AppColors.primaryText,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 25,
                  width: 80,
                  color: AppColors.primaryBg,
                  child: const Center(
                    child: Text(
                      '10 / 10 Task',
                      style: TextStyle(
                        color: AppColors.primaryText,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Pemrograman Mobile',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'Deadline 2 hari lagi',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.cardBg,
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://cdn.idntimes.com/content-images/post/20230515/gambar-profil-wa-keren-41d3732660868cf4a36d801d1301f672.jpg'),
                      ),
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://cdn.idntimes.com/content-images/post/20230515/gambar-profil-wa-keren-41d3732660868cf4a36d801d1301f672.jpg'),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 25,
                      width: 80,
                      color: AppColors.primaryBg,
                      child: const Center(
                        child: Text(
                          '100%',
                          style: TextStyle(
                            color:
                                AppColors.primaryText,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 25,
                  width: 80,
                  color: AppColors.primaryBg,
                  child: const Center(
                    child: Text(
                      '10 / 10 Task',
                      style: TextStyle(
                        color: AppColors.primaryText,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Pemrograman Mobile',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'Deadline 2 hari lagi',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.cardBg,
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://cdn.idntimes.com/content-images/post/20230515/gambar-profil-wa-keren-41d3732660868cf4a36d801d1301f672.jpg'),
                      ),
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://cdn.idntimes.com/content-images/post/20230515/gambar-profil-wa-keren-41d3732660868cf4a36d801d1301f672.jpg'),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 25,
                      width: 80,
                      color: AppColors.primaryBg,
                      child: const Center(
                        child: Text(
                          '100%',
                          style: TextStyle(
                            color:
                                AppColors.primaryText,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 25,
                  width: 80,
                  color: AppColors.primaryBg,
                  child: const Center(
                    child: Text(
                      '10 / 10 Task',
                      style: TextStyle(
                        color: AppColors.primaryText,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Pemrograman Mobile',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'Deadline 2 hari lagi',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.cardBg,
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://cdn.idntimes.com/content-images/post/20230515/gambar-profil-wa-keren-41d3732660868cf4a36d801d1301f672.jpg'),
                      ),
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://cdn.idntimes.com/content-images/post/20230515/gambar-profil-wa-keren-41d3732660868cf4a36d801d1301f672.jpg'),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 25,
                      width: 80,
                      color: AppColors.primaryBg,
                      child: const Center(
                        child: Text(
                          '100%',
                          style: TextStyle(
                            color:
                                AppColors.primaryText,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 25,
                  width: 80,
                  color: AppColors.primaryBg,
                  child: const Center(
                    child: Text(
                      '10 / 10 Task',
                      style: TextStyle(
                        color: AppColors.primaryText,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Pemrograman Mobile',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'Deadline 2 hari lagi',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
