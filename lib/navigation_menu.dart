
import 'package:flutter/material.dart';
import 'package:flutter_task/screen/chat_screen/chat_screen.dart';
import 'package:flutter_task/screen/contact_screen/contact_screen.dart';
import 'package:flutter_task/screen/home_screen/home_screen.dart';
import 'package:flutter_task/screen/more_screen/more_screen.dart';
import 'package:get/get.dart';


class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(NavigationController());


    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 60,
          elevation: 4,
          backgroundColor: Colors.white,
          indicatorColor: Colors.black.withOpacity(0.1),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,

          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_outlined,size: 32), label: "",),
            NavigationDestination(icon: Icon(Icons.messenger_outline,size: 26), label: ""),
            NavigationDestination(icon: Icon(Icons.person_outline_outlined,size: 30), label: ""),
            NavigationDestination(icon: Icon(Icons.more_horiz,size: 30), label: ""),
          ],
        ),
      ),
      body: Obx(() => controller.screen[controller.selectedIndex.value]),
    );
  }
}


class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screen = [ const HomeScreen(),const ChatScreen(),const ContactScreen(),const MoreScreen(),];
}
