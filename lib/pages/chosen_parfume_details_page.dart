// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:parfume_app/main.dart';

class Chosen_Parfume_DetailsPage extends StatelessWidget {
  const Chosen_Parfume_DetailsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 70,
              backgroundColor: appColors().primary,
              elevation: 0,
              actions: const [
                Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(Icons.shopping_bag_outlined)),
              ],
            ),
            backgroundColor: appColors().primary,
            body: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 650,
                width: double.infinity,
                //White showcase decoration
                decoration: BoxDecoration(
                    color: appColors().menu,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35))),
                //Content of white showcase
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //Parfume Image
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        height: 250,
                        width: 100,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 25.0,
                                spreadRadius: 15),
                          ],
                        ),
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Image.asset('asset/1.png'),
                        ),
                      ),
                    ),
                    //Writings
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'TOM FORD',
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                'NEROLI PORTOFINO',
                                style: TextStyle(
                                  color: appColors().primary,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'Spray 50 ml.',
                                style: TextStyle(
                                    color: appColors().primary,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Product Code  :  TF54FD8654FS',
                                style: TextStyle(
                                    color: appColors().primary, fontSize: 12),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const SizedBox(
                                height: 145,
                                width: 340,
                                child: Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras lacus nisi, auctor nec erat malesuada, scelerisque sagittis nisi. Ut eu ante velit. Suspendisse vel neque ornare, tristique nunc et, faucibus ex. Mauris sed congue est. Mauris non vulputate ipsum. Integer vel accumsan dui, nec luctus lacus. Aliquam dignissim diam elit, sed eleifend mauris condimentum quis. Aenean eleifend, tellus vel molestie iaculis, tellus enim auctor orci, eget tristique mauris ligula sed nulla. Nam vitae erat justo.'),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}

final List ParfumeList = [
  ['Neroli Portofino', '\$349', '50 ML', 'asset/1.png'],
  ['Tabacco Oud', '\$299', '60 ML', 'asset/2.png'],
  ['Rose Prick', '\$229', '75 ML', 'asset/3.png'],
  ['Bitter Peach', '\$199', '50 ML', 'asset/4.png'],
  ['Noır de Noır', '\$159', '40 ML', 'asset/5.png'],
  ['Lost Cherry', '\$249', '750 ML', 'asset/6.png'],
];
