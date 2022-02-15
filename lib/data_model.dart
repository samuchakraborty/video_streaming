class DataModel {
  String categoryName;
  List<Category>? categoryList;

  DataModel({required this.categoryName, this.categoryList});
}

class Category {
  String name;
  List<SubCategory> subCategoryList;

  Category({required this.name, required this.subCategoryList});
}

class SubCategory {
  String name;

  SubCategory({required this.name});
}

List<DataModel> dataModel = [
  DataModel(
    categoryName: 'Torah',
    categoryList: [
      Category(name: "Challenges", subCategoryList: []),
      Category(name: "Chanuka", subCategoryList: []),
      Category(name: "Chochma", subCategoryList: [
        SubCategory(name: "Challenges"),
        SubCategory(name: "Chanuka"),
        SubCategory(name: "Chochma"),
      ]),
    ],
  ),
  DataModel(
    categoryName: 'Parsha',
    categoryList: [
      Category(name: "Challenges", subCategoryList: []),
      // Category(name: "Chanuka"),
      // Category(
      //   name: "Chochma",
      //   subCategoryList: [
      //     SubCategory(name: "Challenges"),
      //     SubCategory(name: "Chanuka"),
      //     SubCategory(name: "Chochma"),
      //   ],
      // ),
    ],
  ),
  DataModel(
    categoryName: "Holidays",
    categoryList: [
      Category(name: "Elul", subCategoryList: []),
      // Category(name: "Chanuka"),
      Category(
        name: "Chochma",
        subCategoryList: [
          SubCategory(name: "Challenges"),
          SubCategory(name: "Chanuka"),
          SubCategory(name: "Chochma"),
        ],
      ),
    ],
  ),
  DataModel(
    categoryName: 'Nach',
    categoryList: [
      Category(name: "Challenges", subCategoryList: []),
      Category(name: "Chanuka", subCategoryList: []),
      Category(
        name: "Chochma", subCategoryList: [],
        // subCategoryList: [
        //   SubCategory(name: "Challenges"),
        //   SubCategory(name: "Chanuka"),
        //   SubCategory(name: "Chochma"),
        // ],
      ),
    ],
  ),
  DataModel(
    categoryName: 'Significant Dates',
    categoryList: [
      //Category(name: "Challenges", subCategoryList: []),
      // Category(name: "Chanuka"),
      Category(
        name: "Chochma",
        subCategoryList: [
          SubCategory(name: "Challenges"),
          SubCategory(name: "Chanuka"),
          SubCategory(name: "Chochma"),
        ],
       ),
      Category(name: "Challenges", subCategoryList: []),

    ],
  ),
  DataModel(
    categoryName: 'The Jewish People',
    categoryList: [
      //Category(name: "Challenges", subCategoryList: []),
      // Category(name: "Chanuka"),
      Category(
        name: "Chochma",
        subCategoryList: [
          SubCategory(name: "Challenges"),
          SubCategory(name: "Chanuka"),
          SubCategory(name: "Chochma"),
        ],
      ),
      Category(name: "Challenges", subCategoryList: []),

    ],
  ),
];
