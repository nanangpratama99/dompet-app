import 'package:dompet/constant/constant.dart';
import 'package:dompet/models/menu_model.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  late final bool isActive;

  // menu function
  void _toggleActive(int index) {
    setState(() {
      for (var item in menuData) {
        item.isActive = false;
      }
      menuData[index].isActive = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: color4,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(35),
          ),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: color1,
                ),
                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Samuel",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "@samuel",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                    ),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 35,
                    width: 35,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.arrow_back_ios_rounded,
                        color: Colors.white, size: 25),
                  ),
                )
              ],
            ),
            const Divider(thickness: 2, color: Colors.white),
            const SizedBox(height: 30),
            SizedBox(
              height: 500,
              // width: MediaQuery.of(context).size.width * 0.8,
              child: ListView.builder(
                itemCount: menuData.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: GestureDetector(
                      onTap: () {
                        _toggleActive(index);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: menuData[index].isActive
                                ? Colors.white
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            menuData[index].isActive
                                ? Icon(
                                    menuData[index].icon,
                                    color: Colors.black54,
                                    size: 30,
                                  )
                                : Icon(
                                    menuData[index].icon,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                            const SizedBox(width: 10),
                            menuData[index].isActive
                                ? Text(
                                    menuData[index].menuTitle,
                                    style: const TextStyle(
                                      color: Colors.black54,
                                    ),
                                  )
                                : Text(
                                    menuData[index].menuTitle,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                            const Spacer(),
                            menuData[index].isActive
                                ? Icon(
                                    menuData[index].iconMore,
                                    color: Colors.black54,
                                  )
                                : Icon(
                                    menuData[index].iconMore,
                                    color: Colors.white,
                                  )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const Spacer(),
            Row(
              children: [
                const Text(
                  "Logout",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.logout,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
