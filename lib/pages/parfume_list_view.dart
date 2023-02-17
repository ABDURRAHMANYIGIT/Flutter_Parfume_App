// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class ParfumeListView extends StatelessWidget {
  final String ParfumeName;
  final String ParfumeDetails;
  final String ParfumePrice;
  final String ParfumeAssetPath;
  // final VoidCallback ParfumeViewOnTap;
  const ParfumeListView(
      {Key? key,
      required this.ParfumeName,
      required this.ParfumeDetails,
      required this.ParfumePrice,
      required this.ParfumeAssetPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        //white space
        Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Container(
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
        //text section
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 120,
                width: 100,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Image.asset(
                    ParfumeAssetPath,
                  ),
                ),
              ),
            ),
            Column(children: [
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Tom Ford',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                ParfumeName,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                ParfumeDetails,
                style:
                    const TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                ParfumePrice,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
