import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant.dart';
import 'home_page_screen.dart';

class NowPlaying extends StatelessWidget {
  const NowPlaying({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          shrinkWrap: true,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              alignment: Alignment.center,
              child: Image.asset('assets/logo-dark.png'),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 50, right: 50, top: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black12)),
              child: TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                  hintText: "Search anything about judasim",
                  isDense: true,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: CardWidget(
                headingName: "Now Playing",
                imageUrl: 'assets/Mask Group 1.png',
                tittle: "The power of now",
                subtitle: '"A person  Never Finds Himself in a Situation"',
                widget: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: const Color(0xffFAFFCB),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                      border: Border.all(color: const Color(0xffEFEBEB))),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 2,
                      ),
                      Image.asset("assets/play-button.png"),
                      const SizedBox(
                        width: 2,
                      ),
                      const Text(
                        "  Play   ",
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xffE0AA5C),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                    ],
                  ),
                ),
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
            const CardWidget(
              headingName: "Parsha",
              imageUrl: 'assets/Mask Group 2.png',
              tittle: "Parsha: Vayetzei, Chanukah",
              subtitle: '"The Baal Shem Tov on Why We Blow the Shofar"',
            ),
            const SizedBox(
              height: 20,
            ),

            const RowWise(
              imageUrl: "assets/Livello_5.png",
              labelText: "Recent Classes",
              isTrue: false,
            ),
            const SizedBox(
              height: 15,
            ),
            const RowWise(
              imageUrl:
                  "assets/8029163_growth_analytics_analysis_graph_chart_icon.png",
              labelText: "Featured Classes",
              isTrue: false,
            ),
            const SizedBox(
              height: 15,
            ),
            const RowWise(
              imageUrl: "assets/3325139_grid_icon.png",
              labelText: "Categories",
              isTrue: false,
            ),
            const SizedBox(
              height: 15,
            ),

            const RowWise(
              imageUrl: "assets/Group 4291.png",
              labelText: "Series",
              isTrue: false,
            ),

            const SizedBox(
              height: 15,
            ),

            const RowWise(
              imageUrl: "assets/Group 4292.png",
              labelText: "Live Classes",
              isTrue: false,
            ),

            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const Text(
                    "Info",
                    style: text18fi,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const RowWise(
                  imageUrl:
                      "assets/8029163_growth_analytics_analysis_graph_chart_icon.png",
                  labelText: "Class Schedule",
                  isTrue: false,
                ),
                const SizedBox(
                  height: 15,
                ),
                const RowWise(
                  imageUrl: "assets/3325139_grid_icon.png",
                  labelText: "About",
                  isTrue: false,
                ),
                const SizedBox(
                  height: 15,
                ),
                const RowWise(
                  imageUrl: "assets/Group 4291.png",
                  labelText: "Contact",
                  isTrue: false,
                ),
                const SizedBox(
                  height: 15,
                ),
                const RowWise(
                  imageUrl: "assets/Path 464.png",
                  labelText: "Sponsor",
                  isTrue: false,
                ),
                const SizedBox(
                  height: 15,
                ),
                const RowWise(
                  imageUrl: "assets/dollar.png",
                  labelText: "Donate",
                  isTrue: false,
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const Text(
                    "Subscribe",
                    style: text18fi,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: const [
                    RowWise(
                      imageUrl: "assets/whatsapp.png",
                      labelText: "WhatsApp (Daily Broadcast)",
                      isTrue: true,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                 // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 40,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black12)),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          hintText: " Your phone number",
                          isDense: true,
                          hintStyle: TextStyle(fontSize: 12),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      // alignment: Alignment.center,
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black12)),
                      child: const Text(
                        'Join',
                        style: TextStyle(
                            color: Color(0xff777777),
                            fontSize: 12,
                            fontFamily: "Regular"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: const [
                    RowWise(
                      imageUrl: "assets/envelope.png",
                      labelText: "Email (Weekly Newsletter)",
                      isTrue: true,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 40,
                      alignment: Alignment.center,
                       margin: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black12)),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          hintText: " Your email address",
                          isDense: true,
                          hintStyle: TextStyle(fontSize: 12),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      // alignment: Alignment.center,
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black12)),
                      child: const Text(
                        'JOIN',
                        style: TextStyle(
                            color: Color(0xff777777),
                            fontSize: 12,
                            fontFamily: "Regular"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  '  Follow Us On Social Media',
                  style: text18fi,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                 margin: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/facebook.png"),
                      const SizedBox(
                        width: 4,
                      ),
                      Image.asset("assets/104461_twitter_icon.png"),
                      const SizedBox(
                        width: 4,
                      ),
                      Image.asset("assets/7123016_podcast_google_icon.png"),
                      const SizedBox(
                        width: 4,
                      ),
                      Image.asset("assets/Group 4341.png"),
                      const SizedBox(
                        width: 4,
                      ),
                      Image.asset("assets/Path 479.png"),
                      const SizedBox(
                        width: 4,
                      ),
                      Image.asset("assets/5279112_camera_instagram_social media_instagram logo_icon.png"),
                      const SizedBox(
                        width: 4,
                      ),
                      Image.asset("assets/2559779_media_network_social_spotify_icon.png"),
                      const SizedBox(
                        width: 4,
                      ),





                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RowWise extends StatelessWidget {
  const RowWise({
    Key? key,
    required this.imageUrl,
    required this.labelText,
    required this.isTrue,
  }) : super(key: key);

  final String imageUrl;
  final String labelText;
  final bool isTrue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(imageUrl),
              const SizedBox(
                width: 10,
              ),
              Text(
                labelText,
                style: isTrue ? text16color : text14Color,
              ),
            ],
          ),
          if (isTrue == false)
            Row(
              children: const [
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ],
            ),
        ],
      ),
    );
  }
}
