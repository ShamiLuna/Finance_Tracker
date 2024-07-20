
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Expen extends GetView {
  // const Expen({super.key});


  // RxList<String> selected = [].obs;
  final RxList<String> selected = <String>[].obs;

   Expen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .primaryColorLight,
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .primaryColorLight,
        title: const Text('Add Transaction', style: TextStyle(
            fontSize: 20, fontFamily: 'Roboto', fontWeight: FontWeight.w700)),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SingleChildScrollView(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'How much?',
              style: TextStyle(fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Opacity(
              opacity: 0.64,
              child: SizedBox(
                height: 100,
                width: double.infinity,
                child: TextFormField(
                  style: TextStyle(fontSize: 80, color: Theme
                      .of(context)
                      .primaryColor),
                  decoration: const InputDecoration(
                    hintText: "\u{20B9}55698",
                    border: InputBorder.none,
                    // border: OutlineInputBorder(
                    //   borderSide:
                    //    BorderSide(color: Colors.white),
                    //
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
                  ),
                ),
              ),
            ),
          ),
          // Container(
          //   child: DefaultTabController(
          //     length: 2,
          //     child: NestedScrollView(
          //       physics: ScrollPhysics(),
          //       headerSliverBuilder: (context, innerBoxIsScolled) {
          //         return [
          //           SliverAppBar(
          //             backgroundColor: Colors.white,
          //             collapsedHeight: 320,
          //             expandedHeight: 320,
          //             // flexibleSpace: Expen(),
          //           ),
          //           SliverPersistentHeader(
          //             delegate: MyD(
          //               TabBar(
          //                 tabs: [
          //                   Tab(icon: Container(child: Text("Expenses"),),),
          //                   // Tab(icon: Icon(Icons.movie_outlined)),
          //                   Tab(icon: Container(child: Text("Income"),),),
          //
          //                 ],
          //                 indicatorColor: Colors.black,
          //                 unselectedLabelColor: Colors.grey,
          //                 labelColor: Theme.of(context).primaryColor,
          //               ),
          //             ),
          //
          //             floating: true, pinned: true,)
          //         ];
          //       },
          //       body: TabBarView
          //         (
          //         children: [
          //           // Widget for the first tab
          //           Center(
          //             child: Text('First Tab'),
          //           ),
          //           // Widget for the second tab
          //           Center(
          //             child: Text('Second Tab'),
          //           ),
          //           // Widget for the third tab
          //           // Center(
          //           //   child: Text('Third Tab'),
          //           // ),
          //         ],),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }

}
class Cums extends GetView {
  // const Cums({super.key});
  final List<String> list = <String>['Cash', 'Bank', 'Card'];
  final List<String> list2 = <String>['Food', 'Transport', 'Education'];
  late  RxString dropdownValue = list.first.obs;
  late  RxString dropdownValue2 = list.first.obs;

  Cums({super.key});

  // List<String> posts = [
  //   "assets/abc.jpg",
  //   "assets/download.jpg",
  //   "assets/efg.jpg",
  //   "assets/hij.jpg",
  //   "assets/lll.jpg",
  //   "assets/abc.jpg",
  //   "assets/download.jpg",
  //   "assets/efg.jpg",
  //   "assets/hij.jpg",
  //   "assets/abc.jpg",
  //   "assets/download.jpg",
  //   "assets/efg.jpg",
  //   "assets/hij.jpg",
  //   "assets/lll.jpg",
  //   "assets/abc.jpg",
  //   "assets/download.jpg",
  //   "assets/efg.jpg",
  //   "assets/hij.jpg",
  //   "assets/abc.jpg",
  //   "assets/download.jpg",
  //   "assets/efg.jpg",
  //   "assets/hij.jpg",
  //
  //
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .primaryColorLight,
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          // physics: const ScrollPhysics(),
          headerSliverBuilder: (context, innerBoxIsScolled) {
            return [
              SliverAppBar(
                backgroundColor: Theme
                    .of(context)
                    .primaryColorLight,
                collapsedHeight: 220,
                expandedHeight: 220,
                flexibleSpace:  Expen(),
              ),
              SliverPersistentHeader(
                delegate: MyD(
                  TabBar(
                    tabs: [
                      Tab(
                        height: 50,
                        icon: Container(
                          height: 100,
                          width: 200,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                          ),
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 7, left: 30, right: 30, bottom: 7),
                              child: Text("Expenses", style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 20),),
                            ),
                          ),
                        ),),
                      // Tab(icon: Icon(Icons.movie_outlined)),
                      Tab(
                        height: 50,
                        child: Container(
                          height: 100,
                          width: 180,
                          decoration: const BoxDecoration(
                              color: Colors.green
                          ),
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 7, left: 30, right: 30, bottom: 7),
                              child: Text("Income", style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 20),),
                            ),
                          ),
                        ),
                        // icon:
                      ),
                    ],
                    indicatorColor: Colors.blue,
                    unselectedLabelColor: Colors.black12,
                    labelColor: Colors.black,
                  ),
                ),
                floating: true, pinned: true,)
            ];
          },
          body: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                tab1(), tab2(),
                // Widget for the second tab
              ]

          ),
        ),
      ),
    );
  }


  Widget tab1() {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final TextEditingController textEditingController = TextEditingController();
    // const List<String> list = <String>['Cash', 'Bank', 'Card',];
    // const List<String> list2 = <String>['Food', 'Transport', 'Education',];
    // String dropdownValue = list.first;
    // String dropdownValue2 = list.first;
    return ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 16, left: 20, right: 1, bottom: 4),
              child:
              // Botto() async {
              // await Future.delayed(const Duration(microseconds: 1)); // Change the duration as needed
              // Get.toNamed(Routes.BOTTOM);
              // }
              DropdownMenu<dynamic>(
                hintText: "Category",
                width: 0.9 * MediaQuery
                    .of(Get.context!)
                    .size
                    .width,
                // initialSelection: list2.first,
                onSelected: ( dynamic value) {
                  // This is called when the user selects an item.
                    dropdownValue2 = value!;
                },
                dropdownMenuEntries: list2.map<DropdownMenuEntry<String>>((
                    String value) {
                  return DropdownMenuEntry<String>(value: value, label: value);
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 4, left: 16, right: 16, bottom: 4),
              child: Row(
                children: [
                  SizedBox(
                    width: 0.4 * MediaQuery
                        .of(Get.context!)
                        .size
                        .width,
                    child: TextFormField(
                      decoration: InputDecoration(
                        // icon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Theme
                                  .of(Get.context!)
                                  .cardColor,),
                              borderRadius: BorderRadius.circular(5)),
                          // icon: Icon(Icons.person),
                          hintText: 'Receipt No'
                      ),
                      // Text(
                      //   'SignupView is working',
                      //   style: TextStyle(fontSize: 20),
                      // ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 4, left: 16, right: 16, bottom: 4),
                    child: SizedBox(
                      width: 0.4 * MediaQuery
                          .of(Get.context!)
                          .size
                          .width,
                      child: TextFormField(
                        decoration: InputDecoration(
                          // icon: const Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Theme
                                    .of(Get.context!)
                                    .cardColor,),
                                borderRadius: BorderRadius.circular(5)),
                            // icon: Icon(Icons.person),
                            hintText: 'Invoice Number'
                        ),
                        // Text(
                        //   'SignupView is working',
                        //   style: TextStyle(fontSize: 20),
                        // ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 4, left: 16, right: 16, bottom: 4),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 60.0, horizontal: 20.0),
                    // icon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Theme
                            .of(Get.context!)
                            .cardColor,),
                        borderRadius: BorderRadius.circular(5)),
                    // icon: Icon(Icons.person),
                    hintText: 'Description'
                ),
                // Text(
                //   'SignupView is working',
                //   style: TextStyle(fontSize: 20),
                // ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 16, left: 16, right: 16, bottom: 4),
              child: TextFormField(
                decoration: InputDecoration(
                  // icon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Theme
                            .of(Get.context!)
                            .cardColor,),
                        borderRadius: BorderRadius.circular(5)),
                    // icon: Icon(Icons.person),
                    hintText: 'Vendor Name'
                ),
                // Text(
                //   'SignupView is working',
                //   style: TextStyle(fontSize: 20),
                // ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 4, left: 16, right: 16, bottom: 4),
              child: Row(
                children: [
                  SizedBox(
                    width: 0.4 * MediaQuery
                        .of(Get.context!)
                        .size
                        .width,
                    child: TextFormField(
                      decoration: InputDecoration(
                        // icon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Theme
                                  .of(Get.context!)
                                  .cardColor,),
                              borderRadius: BorderRadius.circular(5)),
                          // icon: Icon(Icons.person),
                          hintText: 'GST'
                      ),
                      // Text(
                      //   'SignupView is working',
                      //   style: TextStyle(fontSize: 20),
                      // ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 4, left: 16, right: 16, bottom: 4),
                    child: SizedBox(
                      width: 0.4 * MediaQuery
                          .of(Get.context!)
                          .size
                          .width,
                      child: TextFormField(
                        decoration: InputDecoration(
                          // icon: const Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Theme
                                    .of(Get.context!)
                                    .cardColor,),
                                borderRadius: BorderRadius.circular(5)),
                            // icon: Icon(Icons.person),
                            hintText: 'Tags'
                        ),
                        // Text(
                        //   'SignupView is working',
                        //   style: TextStyle(fontSize: 20),
                        // ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 4, left: 16, right: 16, bottom: 4),
              child: Row(
                children: [
                  DropdownMenu<dynamic>(
                    initialSelection: list.first,
                    onSelected: (dynamic value) {
                      // This is called when the user selects an item.
                        dropdownValue = value!;
                    },
                    dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((
                        String value) {
                      return DropdownMenuEntry<String>(
                          value: value, label: value);
                    }).toList(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 0.4 * MediaQuery
                    .of(Get.context!)
                    .size
                    .height,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: Theme
                        .of(Get.context!)
                        .primaryColorDark,
                  ),
                  onPressed: () {
                    // if (_formKey.currentState!.validate()) {
                    _showSuccessDialog(Get.context!);
                    // }
                    // Allset();
                    // Mail();
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> Mail()));
                  }, child: const SizedBox(
                  height: 56,
                  width: double.infinity,
                  child: Center(child: Text('Continue', style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold),)))),
            ),
          ]
      );

  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Success'),
          content: const Text('Transaction has been successfully added!'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Widget tab2() {
    const List<String> list = <String>['Cash', 'Bank', 'Card',];
    const List<String> list2 = <String>['Food', 'Transport', 'Education',];
    String dropdownValue = list.first;
    String dropdownValue2 = list2.first;
    return ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 16, left: 2, right: 1, bottom: 4),
            child: Obx(() => DropdownMenu<String>(

                hintText: "Category",
                width: 0.9 * MediaQuery
                    .of(Get.context!)
                    .size
                    .width,
                // initialSelection: list2.first,
                onSelected: (String? value) {
                  // This is called when the user selects an item.

                    dropdownValue2 = value!;

                },
                dropdownMenuEntries: list2.map<DropdownMenuEntry<String>>((
                    String value) {
                  return DropdownMenuEntry<String>(
                      style: MenuItemButton.styleFrom(
                          foregroundColor: Theme
                              .of(Get.context!)
                              .canvasColor),
                      value: value, label: value);
                }).toList(),
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 4,left: 16,right: 16,bottom: 4),
          //   child: Row(
          //     children: [
          //       SizedBox(
          //         width: 0.4 * MediaQuery.of(context).size.width,
          //         child: TextFormField(
          //           decoration: InputDecoration(
          //             // icon: const Icon(Icons.person),
          //               border: OutlineInputBorder(
          //                 borderRadius: BorderRadius.circular(10),
          //               ),
          //               focusedBorder: OutlineInputBorder(
          //                   borderSide:
          //                   BorderSide(color: Theme.of(context).cardColor,),
          //                   borderRadius: BorderRadius.circular(10)),
          //               // icon: Icon(Icons.person),
          //               hintText: 'Receipt No'
          //           ),
          //           // Text(
          //           //   'SignupView is working',
          //           //   style: TextStyle(fontSize: 20),
          //           // ),
          //         ),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.only(top: 4,left: 16,right: 16,bottom: 4),
          //         child: SizedBox(
          //           width: 0.4 * MediaQuery.of(context).size.width,
          //           child: TextFormField(
          //             decoration: InputDecoration(
          //               // icon: const Icon(Icons.person),
          //                 border: OutlineInputBorder(
          //                   borderRadius: BorderRadius.circular(10),
          //                 ),
          //                 focusedBorder: OutlineInputBorder(
          //                     borderSide:
          //                     BorderSide(color: Theme.of(context).cardColor,),
          //                     borderRadius: BorderRadius.circular(10)),
          //                 // icon: Icon(Icons.person),
          //                 hintText: 'Invoice Number'
          //             ),
          //             // Text(
          //             //   'SignupView is working',
          //             //   style: TextStyle(fontSize: 20),
          //             // ),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(
                top: 4, left: 16, right: 16, bottom: 4),
            child: TextFormField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 60.0, horizontal: 20.0),
                  // icon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Theme
                          .of(Get.context!)
                          .cardColor,),
                      borderRadius: BorderRadius.circular(5)),
                  // icon: Icon(Icons.person),
                  hintText: 'Description'
              ),
              // Text(
              //   'SignupView is working',
              //   style: TextStyle(fontSize: 20),
              // ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 16,left: 16,right: 16,bottom: 4),
          //   child: TextFormField(
          //     decoration: InputDecoration(
          //       // icon: const Icon(Icons.person),
          //         border: OutlineInputBorder(
          //           borderRadius: BorderRadius.circular(10),
          //         ),
          //         focusedBorder: OutlineInputBorder(
          //             borderSide:
          //             BorderSide(color: Theme.of(context).cardColor,),
          //             borderRadius: BorderRadius.circular(10)),
          //         // icon: Icon(Icons.person),
          //         hintText: 'Vendor Name'
          //     ),
          //     // Text(
          //     //   'SignupView is working',
          //     //   style: TextStyle(fontSize: 20),
          //     // ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(
                top: 4, left: 16, right: 16, bottom: 4),
            child: Row(
              children: [
                SizedBox(
                  width: 0.4 * MediaQuery
                      .of(Get.context!)
                      .size
                      .width,
                  child: TextFormField(
                    decoration: InputDecoration(
                      // icon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Theme
                                .of(Get.context!)
                                .cardColor,),
                            borderRadius: BorderRadius.circular(5)),
                        // icon: Icon(Icons.person),
                        hintText: 'GST'
                    ),
                    // Text(
                    //   'SignupView is working',
                    //   style: TextStyle(fontSize: 20),
                    // ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 4, left: 16, right: 16, bottom: 4),
                  child: SizedBox(
                    width: 0.4 * MediaQuery
                        .of(Get.context!)
                        .size
                        .width,
                    child: TextFormField(
                      decoration: InputDecoration(
                        // icon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Theme
                                  .of(Get.context!)
                                  .cardColor,),
                              borderRadius: BorderRadius.circular(5)),
                          // icon: Icon(Icons.person),
                          hintText: 'Tags'
                      ),
                      // Text(
                      //   'SignupView is working',
                      //   style: TextStyle(fontSize: 20),
                      // ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 4, left: 16, right: 16, bottom: 4),
            child: Row(
              children: [
                Container(
                  child: Obx(() =>
                     DropdownMenu<String>(
                      initialSelection: list.first,
                      onSelected: (String? value) {
                        // This is called when the user selects an item.
                        
                          dropdownValue = value!;
                       
                      },
                      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((
                          String value) {
                        return DropdownMenuEntry<String>(
                            value: value, label: value);
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 0.4 * MediaQuery
                  .of(Get.context!)
                  .size
                  .height,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  backgroundColor: Theme
                      .of(Get.context!)
                      .primaryColorDark,
                ),
                onPressed: () {
                  _showSuccessDialog(Get.context!);
                  // Allset();
                  // Mail();
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Mail()));
                }, child: const SizedBox(
                height: 56,
                width: double.infinity,
                child: Center(child: Text('Continue', style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),)))),
          ),
        ]
    );
  }
}
class MyD extends SliverPersistentHeaderDelegate{
  MyD(this.tabBar);
  final TabBar tabBar;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Theme.of(context).primaryColorLight,
      child: tabBar,
    );
  }

  @override

  double get maxExtent => tabBar.preferredSize.height;

  @override

  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {

    return false;
  }

}


