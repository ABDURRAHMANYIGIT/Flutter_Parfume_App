import 'package:flutter/material.dart';
import 'package:parfume_app/main.dart';
import 'menu_bar.dart';
import 'parfume_list_view.dart';

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
  List<List<dynamic>> ParfumeList = [
    ['Neroli Portofino', '\$349', '50 ML', 'asset/1.png'],
    ['Tabacco Oud', '\$299', '60 ML', 'asset/2.png'],
    ['Rose Prick', '\$229', '75 ML', 'asset/3.png'],
    ['Bitter Peach', '\$199', '50 ML', 'asset/4.png'],
    ['Noır de Noır', '\$159', '40 ML', 'asset/5.png'],
    ['Lost Cherry', '\$249', '750 ML', 'asset/6.png'],
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

  //Bottom Nav Bar Tapped Actions, navigationsları buraya koy.
  void _onItemTapped(int NavBarindex) {
    setState(() {
      _selectedIndex = NavBarindex;
    });
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: appColors().menu,
          elevation: 0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favourites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
          ],
          selectedItemColor: appColors().primary,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
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
                decoration: BoxDecoration(
                    color: appColors().menu,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35))),
                child: Center(
                  child: Column(
                    children: [
                      // Tom Ford Parfume Heading
                      Padding(
                        padding: const EdgeInsets.all(25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'Tom Ford ',
                                style: TextStyle(
                                    color: appColors().primary,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Parfume',
                                      style: TextStyle(
                                          color: appColors().primary,
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: appColors().primary,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'See All',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ),
                            // Parfume List View
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 250, //height of white container
                        width: 170,
                        child: ListView.builder(
                          itemCount: ParfumeList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return ParfumeListView(
                              ParfumeName: ParfumeList[index][0],
                              ParfumePrice: ParfumeList[index][1],
                              ParfumeDetails: ParfumeList[index][2],
                              ParfumeAssetPath: ParfumeList[index][3],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
