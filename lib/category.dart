import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant.dart';
import 'data_model.dart';

class CategoryPage extends StatefulWidget {
  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  int _counter = 0;
  bool isPressed = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // print(dataModel[0].categoryList![0].name);
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: Image.asset('assets/logo-dark.png'),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(50),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xffEFEBEB), width: 2),
                    color: Color(0xffFAFFCB),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    )),
                child: const Text(
                  "Browse Categories",
                  style: text14colorstyle,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xffEFEBEB), width: 2),
                    color: const Color(0xffFAFFCB),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    )),
                child: const Text(
                  "Categories",
                  style: text14colorstyle,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xffEFEBEB), width: 2),
                    color: const Color(0xffFAFFCB),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    )),
                child: const Text(
                  "Series",
                  style: text14colorstyle,
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 20,
          ),
          Container(
              margin:const  EdgeInsets.only(left: 20),
              child: const Text("Browse Categories",
              style: text14colorsstyle,
              ),),
          const SizedBox(
            height: 20,
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: dataModel.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    //  color: Colors.red,
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border: Border.all(width: 1, color: Colors.grey)),
                child: ExpansionTile(
                  title: Text(
                    dataModel[index].categoryName.toString(),
                    style: const TextStyle(fontSize: 20),
                  ),
                  // child: ListView(
                  //   shrinkWrap: true,
                  //   // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // GestureDetector(
                    //   onTap: () {
                    //     if (isPressed) {
                    //       setState(() {
                    //         isPressed = false;
                    //       });
                    //     } else {
                    //       setState(() {
                    //         isPressed = true;
                    //       });
                    //     }
                    //   },
                    //   child: Container(
                    //       height: 50,
                    //       margin: const EdgeInsets.all(7),
                    //       color: Colors.green,
                    //       padding: const EdgeInsets.all(12),
                    //       child: Text(
                    //         dataModel[index].categoryName.toString(),
                    //       )),
                    // ),
                    // if (isPressed)
                    ListView.builder(
                        //  key: ,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: dataModel[index].categoryList!.length,
                        itemBuilder: (context, i) {
                          return dataModel[index]
                                  .categoryList![i]
                                  .subCategoryList
                                  .isNotEmpty
                              ? ExpansionTile(
                                  // tilePadding: const EdgeInsets.all(0),
                                  title: Container(
                                    margin: const EdgeInsets.only(left: 18),
                                    child: Text(
                                      dataModel[index]
                                          .categoryList![i]
                                          .name
                                          .toString(),
                                    ),
                                  ),
                                  // child: ListView(
                                  // shrinkWrap: true,
                                  children: [
                                    // Container(
                                    //   padding: const EdgeInsets.all(12),
                                    //   margin: const EdgeInsets.only(left: 50),
                                    //   child: Text(dataModel[index]
                                    //       .categoryList![i]
                                    //       .name
                                    //       .toString()),
                                    // ),
                                    for (var ino = 0;
                                        ino <
                                            dataModel[index]
                                                .categoryList![i]
                                                .subCategoryList
                                                .length;
                                        ino++)
                                      Container(
                                          padding: const EdgeInsets.all(12),
                                          // margin: const EdgeInsets.only(
                                          //     left: 150),
                                          child: Text(dataModel[index]
                                              .categoryList![i]
                                              .subCategoryList[ino]
                                              .name))
                                  ],
                                )
                              : Container(
                                  margin: const EdgeInsets.only(left: 18),
                                  padding: const EdgeInsets.all(12),
                                  child: Text(dataModel[index]
                                      .categoryList![i]
                                      .name
                                      .toString()));
                        }),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                height: 2,
                color: Colors.white,
              );
            },
          ),
        ],
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   bool isPressed = false;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // print(dataModel[0].categoryList![0].name);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: ListView(
//         children: [
//           Container(
//             alignment: Alignment.center,
//             margin: const EdgeInsets.all(12),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 border: Border.all(color: Colors.black12)),
//             child: TextFormField(
//               decoration: const InputDecoration(
//                 contentPadding: EdgeInsets.symmetric(vertical: 15),
//                 hintText: "Search anything about judasim",
//                 isDense: true,
//                 prefixIcon: Icon(Icons.search),
//                 enabledBorder: InputBorder.none,
//                 focusedBorder: InputBorder.none,
//               ),
//             ),
//           ),
//           ListView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               itemCount: dataModel.length,
//               itemBuilder: (context, index) {
//                 return ExpansionTile(
//                   title: Container(
//                     margin: const EdgeInsets.only(left: 40, right: 40),
//                     decoration: BoxDecoration(
//                         color: Colors.red,
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(5)),
//                         border: Border.all(width: 1, color: Colors.green)),
//                     child: Text(
//                       dataModel[index].categoryName.toString(),
//                       style: const TextStyle(fontSize: 20),
//                     ),
//                   ),
//                   // child: ListView(
//                   //   shrinkWrap: true,
//                   //   // mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     // GestureDetector(
//                     //   onTap: () {
//                     //     if (isPressed) {
//                     //       setState(() {
//                     //         isPressed = false;
//                     //       });
//                     //     } else {
//                     //       setState(() {
//                     //         isPressed = true;
//                     //       });
//                     //     }
//                     //   },
//                     //   child: Container(
//                     //       height: 50,
//                     //       margin: const EdgeInsets.all(7),
//                     //       color: Colors.green,
//                     //       padding: const EdgeInsets.all(12),
//                     //       child: Text(
//                     //         dataModel[index].categoryName.toString(),
//                     //       )),
//                     // ),
//                     // if (isPressed)
//                     ListView.builder(
//                         //  key: ,
//                         shrinkWrap: true,
//                         physics: const NeverScrollableScrollPhysics(),
//                         itemCount: dataModel[index].categoryList!.length,
//                         itemBuilder: (context, i) {
//                           return dataModel[index]
//                                   .categoryList![i]
//                                   .subCategoryList
//                                   .isNotEmpty
//                               ? ExpansionTile(
//                                   // tilePadding: const EdgeInsets.all(0),
//                                   title: Container(
//                                     margin: const EdgeInsets.only(left: 18),
//                                     child: Text(
//                                       dataModel[index]
//                                           .categoryList![i]
//                                           .name
//                                           .toString(),
//                                     ),
//                                   ),
//                                   // child: ListView(
//                                   // shrinkWrap: true,
//                                   children: [
//                                     // Container(
//                                     //   padding: const EdgeInsets.all(12),
//                                     //   margin: const EdgeInsets.only(left: 50),
//                                     //   child: Text(dataModel[index]
//                                     //       .categoryList![i]
//                                     //       .name
//                                     //       .toString()),
//                                     // ),
//                                     for (var ino = 0;
//                                         ino <
//                                             dataModel[index]
//                                                 .categoryList![i]
//                                                 .subCategoryList
//                                                 .length;
//                                         ino++)
//                                       Container(
//                                           padding: const EdgeInsets.all(12),
//                                           // margin: const EdgeInsets.only(
//                                           //     left: 150),
//                                           child: Text(dataModel[index]
//                                               .categoryList![i]
//                                               .subCategoryList[ino]
//                                               .name))
//                                   ],
//                                 )
//                               : Container(
//                                   margin: const EdgeInsets.only(left: 18),
//                                   padding: const EdgeInsets.all(12),
//                                   child: Text(dataModel[index]
//                                       .categoryList![i]
//                                       .name
//                                       .toString()));
//                         }),
//                   ],
//                 );
//               }),
//         ],
//       ),
//     );
//   }
// }
