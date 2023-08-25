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
      backgroundColor: color7.withOpacity(0.2),
      body: Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(35),
          ),
        ),
        child: Column(
          children: [
            const BuildTopSidebar(),
            const SizedBox(height: 10),
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
                              ? const Color(0xFF5BCFC6).withOpacity(0.2)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            menuData[index].isActive
                                ? Icon(
                                    menuData[index].icon,
                                    color: const Color(0xFF5BCFC6),
                                    size: 30,
                                  )
                                : Icon(
                                    menuData[index].icon,
                                    color: const Color(0xFF5BCFC6),
                                    size: 30,
                                  ),
                            const SizedBox(width: 10),
                            menuData[index].isActive
                                ? Text(
                                    menuData[index].menuTitle,
                                    style: const TextStyle(
                                      color: Color(0xFF5BCFC6),
                                    ),
                                  )
                                : Text(
                                    menuData[index].menuTitle,
                                    style: const TextStyle(
                                      color: Color(0xFF5BCFC6),
                                    ),
                                  ),
                            const Spacer(),
                            menuData[index].isActive
                                ? Icon(
                                    menuData[index].iconMore,
                                    color: const Color(0xFF5BCFC6),
                                  )
                                : Icon(
                                    menuData[index].iconMore,
                                    color: const Color(0xFF5BCFC6),
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
                  style: TextStyle(color: Color(0xFF5BCFC6), fontSize: 20),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.logout,
                    size: 30,
                    color: Color(0xFF5BCFC6),
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

class BuildTopSidebar extends StatelessWidget {
  const BuildTopSidebar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CircleAvatar(
          radius: 37,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage("assets/images/3.jpeg"),
          ),
        ),
        const SizedBox(width: 10),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Samuel",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Text(
              "@samuel",
              style: TextStyle(color: Colors.black),
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
            height: 45,
            width: 45,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: const Color(0xFF5BCFC6).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(50)),
              child: const Center(
                child: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.black54,
                  size: 20,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
