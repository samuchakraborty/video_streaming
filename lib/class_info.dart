import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constant.dart';

class ClassInfo extends StatefulWidget {
  const ClassInfo({Key? key}) : super(key: key);

  @override
  _ClassInfoState createState() => _ClassInfoState();
}

class _ClassInfoState extends State<ClassInfo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              color: Colors.tealAccent,
              child: const Text(
                "Chassidus: Likkutei Torah ani Ledodi",
                style: text18boldStyle,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     const Text(
                  //       "Upcoming Live",
                  //       style: text18style,
                  //     ),
                  //     Row(
                  //       children: const [
                  //         Text(
                  //           "All",
                  //           style: text14style,
                  //         ),
                  //         Icon(
                  //           Icons.arrow_forward_ios,
                  //           size: 15,
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  // const Text(
                  //   "Chassidus: Likkutei Torah ani Ledodi #1",
                  //   style: text12style,
                  // ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  Image.asset(
                    'assets/images.png',
                    width: MediaQuery.of(context).size.width - 20,
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/view.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.contain,
                          ),

                          const Text(
                            " 2,567",
                            style: text13style,
                          ),

                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(FontAwesomeIcons.comment),

                          // Image.asset(
                          //   'assets/view.png',
                          //   width: 20,
                          //   height: 20,
                          //   fit: BoxFit.contain,
                          // ),

                          const Text(
                            " 7",
                            style: text13style,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            'assets/file-rounded-empty-sheet.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                          const Text(
                            "Source Sheet",
                            style: text13Colorstyle,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          PopupMenuButton(
                              // color: Colors.amber,
                              itemBuilder: (context) => [
                                    PopupMenuItem(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: const [
                                         Icon(Icons.clear),
                                        ],
                                      ),
                                      value: 1,
                                    ),
                                    PopupMenuItem(
                                      child: Row(
                                        children: const [
                                          Text(
                                            "Download",
                                            style: text14style,
                                          ),
                                        ],
                                      ),
                                      value: 1,
                                    ),
                                    PopupMenuItem(
                                      child: Row(
                                        children: [
                                          Text("Call-in"),
                                        ],
                                      ),
                                      value: 2,
                                    ),
                                    PopupMenuItem(
                                      child: Row(
                                        children: [
                                          Text("Report Error"),
                                        ],
                                      ),
                                      value: 2,
                                    )
                                  ])
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Elul: When The King Is Accessible to All",
                    style: text18style,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Hashem Comes to Meet You Where You are",
                    style: text14style,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
