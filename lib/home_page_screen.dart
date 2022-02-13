import 'package:flutter/material.dart';

import 'class_info.dart';
import 'class_schedule.dart';
import 'constant.dart';
import 'online_class.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          physics: const AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child: Image.asset('assets/logo-dark.png'),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Upcoming Live",
                        style: text18style,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LiveClassInfo(),
                            ),
                          );
                        },
                        child: Row(
                          children: const [
                            Text(
                              "All",
                              style: text14style,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Chassidus: Likkutei Torah ani Ledodi #1",
                    style: text12style,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'assets/images.png',
                    width: MediaQuery.of(context).size.width - 20,
                    height: 200,
                    fit: BoxFit.fill,
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
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  shadowColor: Colors.greenAccent,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  minimumSize: const Size(150, 50),
                  maximumSize: const Size(150, 50),
                ),
                //  margin: const EdgeInsets.only(top: 10),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ClassInfo(),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/play-button.png'),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "Go to Class",
                      style: text18style,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            /// card design
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ClassSchedule(),
                  ),
                );
              },
              child: const CardWidget(
                headingName: "Elul",
                imageUrl: 'assets/Mask Group 1.png',
                tittle: "The power of now",
                subtitle: '"A person  Never Finds Himself in a Situation"',
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            /// card design
            const CardWidget(
              headingName: "Rosh Hashana",
              imageUrl: 'assets/Mask Group 2.png',
              tittle: "When I Forgot the Language of My Soul",
              subtitle: '"The Baal Shem Tov on Why We Blow the Shofar"',
            ),
            const SizedBox(
              height: 20,
            ),

            //header
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Short Gems',
                    style: text18style,
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
            Container(
              margin: const EdgeInsets.only(left: 15),
              height: 150,
              child: ListView.builder(
                  // shrinkWrap: true,
                  itemCount: 4,
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Row(
                      children: const [
                        HorizontalCardWidget(
                          imageUrl: 'assets/Mask Group 9.png',
                          subtitle: 'Are you a Frog or an Elephant?',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        HorizontalCardWidget(
                          imageUrl: 'assets/Mask Group 10.png',
                          subtitle: 'Pray for Hashem',
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

            //header
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Upcoming Live',
                    style: text18style,
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

            //header
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recent Classes',
                    style: text18style,
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

            /// Recent class
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

            /// series
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Series",
                        style: text18style,
                      ),
                      Row(
                        children: const [
                          Text(
                            "All",
                            style: text14style,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Tomer Devorah #1",
                        style: text12style,
                      ),
                      Row(
                        children: const [
                          Text(
                            "All 13 classes",
                            style: text14style,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'assets/images.png',
                    width: MediaQuery.of(context).size.width - 20,
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Rabbi Moshe Cardovero (1522 - 1570)",
                    style: text18style,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "The Organizer and Systemizer of Kabbalah",
                    style: text14style,
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  //  margin: const EdgeInsets.only(top: 10),
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 15, bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32.0),
                        border: Border.all(width: 1, color: Colors.grey)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/plus.png',
                          height: 20,
                          width: 20,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Follow",
                          style: text18BlackStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  //  margin: const EdgeInsets.only(top: 10),
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 15, bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(32.0),
                        border: Border.all(width: 1, color: Colors.grey)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/play-button.png'),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "Watch",
                          style: text18style,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class HorizontalCard2Widget extends StatelessWidget {
  const HorizontalCard2Widget({
    Key? key,
    required this.imageUrl,
    required this.subtitle,
    required this.title,
  }) : super(key: key);

  final String imageUrl;

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 2.7,
          child: Text(
            title,
            style: text12style,
            textAlign: TextAlign.start,
            //textAlign: TextAlign.justify,
            maxLines: 2,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Image.asset(
          imageUrl,
          width: MediaQuery.of(context).size.width / 2.8,
          height: 100,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2.7,
          child: Text(
            subtitle,
            style: text14boldStyle,
            textAlign: TextAlign.start,
            //textAlign: TextAlign.justify,
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}

class HorizontalCardWidget extends StatelessWidget {
  const HorizontalCardWidget({
    Key? key,
    required this.imageUrl,
    required this.subtitle,
  }) : super(key: key);

  final String imageUrl;

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: MediaQuery.of(context).size.width / 2.8,
          height: 100,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2.7,
          child: Text(
            subtitle,
            style: text14boldStyle,
            textAlign: TextAlign.start,
            //textAlign: TextAlign.justify,
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget(
      {Key? key,
      required this.headingName,
      required this.imageUrl,
      required this.subtitle,
      required this.tittle})
      : super(key: key);
  final String headingName;
  final String imageUrl;
  final String tittle;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                headingName,
                style: text18style,
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
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                imageUrl,
                width: MediaQuery.of(context).size.width / 2.8,
                height: MediaQuery.of(context).size.height / 10,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Text(
                      tittle,
                      style: text14boldStyle,
                      //textAlign: TextAlign.justify,
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Text(
                      subtitle,
                      style: text12style,
                      // textAlign: TextAlign.justify,
                      maxLines: 2,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
