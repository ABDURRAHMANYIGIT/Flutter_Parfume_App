import 'package:flutter/material.dart';
import 'package:parfume_app/main.dart';
import 'menu_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<List<dynamic>> menuList = [
    ['All', true],
    ['Popular', false],
    ['Natural', false],
    ['Newest', false],
  ];

  // ignore: non_constant_identifier_names
  void MenuTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < menuList.length; i++) {
        menuList[i][1] = false;
      }
      menuList[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: appColors().primary,
          elevation: 0,
          title: const Icon(Icons.menu),
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(Icons.shopping_bag_outlined)),
          ],
        ),
        backgroundColor: appColors().primary,
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            //search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(2),
                  hintText: 'Find your parfume...',
                  hintStyle: TextStyle(
                      color: appColors().primary.withOpacity(0.2),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    color: appColors().primary,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.white)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.white)),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //menus
            SizedBox(
              height: 45,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: menuList.length,
                itemBuilder: (BuildContext context, int index) {
                  return MenuBar(
                      menuName: menuList[index][0],
                      isSelected: menuList[index][1],
                      ontap: () {
                        MenuTypeSelected(index);
                      });
                },
              ),
            ),
            //showcase
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
