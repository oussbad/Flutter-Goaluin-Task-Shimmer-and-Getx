import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:shimmer/shimmer.dart';
import 'package:get/get.dart';

import '../Items/user_item.dart';
import '../controlers/Controller.dart';
import '../model/user.dart';

class Home extends GetView<Controller> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller con =Get.put(Controller());
    return ListView.builder(itemCount: controller.user.length,itemBuilder: (BuildContext context,int index){
      return Row(
        children: [
          UserItem(userId: 3, id: 1, title: '', completed: true,),
          ElevatedButton(onPressed: (){controller.getHttp();}, child: Text('hhhhh'))
        ],

      );

    });


  }
}
