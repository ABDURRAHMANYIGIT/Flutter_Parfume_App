import 'package:flutter/material.dart';

class ParfumeListView extends StatefulWidget {
  const ParfumeListView({super.key});

  @override
  State<ParfumeListView> createState() => _ParfumeListViewState();
}

class _ParfumeListViewState extends State<ParfumeListView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(60),
      child: Stack(children: [
        Center(
          child: Container(
            height: 230,
            width: 170,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                ),
              ],
            ),
          ),
        ),
        Image.asset(
          'asset/2.png',
        ),
        Column(
          children: [
            const Text(
              'Tom Ford',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              'NEROLI PORTOFINO',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              'Spray 50 ml',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "\$335",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ]),
    );
  }
}
