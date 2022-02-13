import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constant.dart';
import 'home_page_screen.dart';

class LiveClassInfo extends StatefulWidget {
  const LiveClassInfo({Key? key}) : super(key: key);

  @override
  _LiveClassInfoState createState() => _LiveClassInfoState();
}

class _LiveClassInfoState extends State<LiveClassInfo> {
  bool isSelected = false;

  bool unSelected = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              // alignment: Alignment.center,
              // padding: const EdgeInsets.all(20),
              // color: Colors.tealAccent,
              child: const Text(
                "Yisroel Besser in Conversation with Rabbi Jacobson",
                style: text14style,
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
                    'assets/interview.png',
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
                            width: 20,
                          ),
                          const Icon(FontAwesomeIcons.comment),

                          // Image.asset(
                          //   'assets/view.png',
                          //   width: 20,
                          //   height: 20,
                          //   fit: BoxFit.contain,
                          // ),

                          const Text(
                            "  7",
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/share.png"),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset("assets/Path 444.png"),
                          PopupMenuButton(
                              padding: const EdgeInsets.all(0),
                              // color: Colors.amber,
                              itemBuilder: (context) => [
                                    PopupMenuItem(
                                      padding: const EdgeInsets.all(0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Icon(Icons.clear)),
                                        ],
                                      ),
                                      value: 1,
                                    ),
                                    PopupMenuItem(
                                      child: Row(
                                        children: [
                                          Image.asset(
                                              "assets/incoming-call.png"),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text("Call-in"),
                                        ],
                                      ),
                                      value: 2,
                                    ),
                                    PopupMenuItem(
                                      child: Row(
                                        children: [
                                          Image.asset("assets/Group 4267.png"),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text("Report Error"),
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
                  Text("August 26, 2021 ~ 18 Elul 5781"),

                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.3,

                    child: const Text(
                      '"Mishpacha" Interviews Rabbi YY on'
                          ' JewishLife Today',
                      style: text18style,
                      // textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Hashem Comes to Meet You Where You are",
                    style: text14Colorstyle,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            if (unSelected == false)
              InkWell(
                onTap: () {
                  setState(() {
                    isSelected = true;
                    unSelected = true;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    children: [
                      const Divider(
                        height: 4,
                        color: Colors.limeAccent,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text("more "),
                          Image.asset("assets/asset1.png")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            const SizedBox(
              height: 10,
            ),
            isSelected == true
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Categories",
                              style: text14boldColorStyle,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xFFFAFFCB), width: 2),
                                      color: Color(0xFFFAFFCB),                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(10),
                                      )),
                                  child: const Text(
                                    "Regatchover gaon",
                                    style: text14textColorstyle,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color:Color(0xFFFAFFCB), width: 2),
                                      color: Color(0xFFFAFFCB),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(10),
                                      )),
                                  child: const Text(
                                    "Individually ",
                                    style: text14textColorstyle,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xFFFAFFCB), width: 2),
                                      color: Color(0xFFFAFFCB),                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(10),
                                      )),
                                  child: const Text(
                                    "Shlach",
                                    style: text14textColorstyle,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Color(0xFFFAFFCB), width: 2),
                                  color: Color(0xFFFAFFCB),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  )),
                              child: const Text(
                                "Regatchover gaon",
                                style: text14textColorstyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Topics",
                              style: text14boldColorStyle,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xFFFAFFCB), width: 2),
                                      color: Color(0xFFFAFFCB),                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(10),
                                      )),
                                  child: const Text(
                                    "Regatchover gaon",
                                    style: text14style,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xFFFAFFCB), width: 2),
                                      color: Color(0xFFFAFFCB),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(10),
                                      )),
                                  child: const Text(
                                    "Individually ",
                                    style: text14style,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xFFFAFFCB), width: 2),
                                      color: Color(0xFFFAFFCB),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(10),
                                      )),
                                  child: const Text(
                                    "Shlach",
                                    style: text14style,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color:Color(0xFFFAFFCB), width: 2),
                                  color: Color(0xFFFAFFCB),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  )),
                              child: const Text(
                                "Regatchover gaon",
                                style: text14style,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "Comments (7)",
                              style: text14boldStyle,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.5,
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border:
                                          Border.all(color: Colors.black12)),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 15),
                                      hintText: "   Leave Your Comment",
                                      isDense: true,
                                      // prefixIcon:Icon(Icons.search),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                                Image.asset("assets/ba.png"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Menachem Frank",
                              style: text12Boldstyle,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "This is a sample comment. This is a sample comment.",
                              style: text14style,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Menachem Frank",
                              style: text12Boldstyle,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "This is a sample comment. This is a sample comment.",
                              style: text14style,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  )
                : Container(),

            if (unSelected)
              InkWell(
                onTap: () {
                  setState(() {
                    isSelected = false;
                    unSelected = false;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    children: [
                      const Divider(
                        height: 4,
                        color: Colors.yellow,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:  [
                          const Text("less "),
                          Image.asset("assets/asset2.png")

                        ],
                      ),
                    ],
                  ),
                ),
              ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Upcoming Videos',
                    style: text14boldColorStyle,
                  ),
                  Row(
                    children: const [
                      Text(
                        "All",
                        style: text14style,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            /// live class
            Container(
              margin: const EdgeInsets.only(left: 15),
              height: 170,
              child: ListView.builder(
                  // shrinkWrap: true,
                  itemCount: 4,
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Row(
                      children: const [
                        HorizontalCard2Widget(
                          imageUrl: 'assets/Mask Group 9.png',
                          subtitle: 'Are you a Frog or an Elephant?',
                          title: 'Chassidus: The Baal Shem',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        HorizontalCard2Widget(
                          imageUrl: 'assets/Mask Group 10.png',
                          subtitle: 'Pray for Hashem',
                          title: 'Chassidus: The Baal Shem',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    );
                  }),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
