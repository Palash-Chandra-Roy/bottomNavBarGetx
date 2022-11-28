import 'package:custombottomnavigator/screen/doctorscreen/doctor_screen.dart';
import 'package:custombottomnavigator/screen/homescreen/home_screen.dart';
import 'package:custombottomnavigator/screen/notificationscreen/notification_screen.dart';
import 'package:custombottomnavigator/screen/profilescreen/profile_Screen.dart';
import 'package:custombottomnavigator/screen/reportscreen/report_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'controller.dart';

class BottomNavigation extends StatelessWidget {


  final _bottomNavController =Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(builder: (_bottomNavController){
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: _bottomNavController.tabIndex.value,
            children: [
              HomeScreen(),
              DoctorScreen(),
              ProfileScreen(),
              NotificationScreen(),
              ReportScreen(),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 70,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)),
              color: Colors.red
          ),
          child: BottomNavigationBar(
            elevation: 0,
            unselectedItemColor: const Color(0xFF818181),
            selectedItemColor: const Color(0xFFA020F0),
            onTap: _bottomNavController.currentIndex,
            currentIndex: _bottomNavController.tabIndex.value,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            // showUnselectedLabels: false,
            // showSelectedLabels: false,
            items: const[
              BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
              BottomNavigationBarItem(icon: Icon(Icons.perm_contact_calendar_outlined),label: "Doctor"),
              BottomNavigationBarItem(
                  icon: SizedBox(
                    child: Material(
                      elevation: 0,
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                            Icons.person),
                      ),
                    ),
                  ),
                label: ""
              ),
              BottomNavigationBarItem(icon: Icon(Icons.notification_add),label: "Notification"),
              BottomNavigationBarItem(icon: Icon(Icons.report),label: "Report"),
            ],
          ),
        ),
      );
    });
  }
}
