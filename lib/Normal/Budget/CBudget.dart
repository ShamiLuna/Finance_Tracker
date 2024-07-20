import 'package:flutter/material.dart';


class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
   List<String> list2 = <String>['Food', 'Transport', 'Education', ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).cardColor,
        appBar: AppBar(
          title: const Text('Create Budget',style: TextStyle(fontSize: 20,fontFamily: 'Roboto',fontWeight: FontWeight.w700),),
          backgroundColor:  Theme.of(context).cardColor,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 180,),
              const Opacity(
                opacity: 0.64,
                child: Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'How much do yo want to spend?',
                      style: TextStyle(fontSize: 20,fontFamily: 'Roboto',fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Opacity(
                  opacity: 0.64,
                  child: SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: TextFormField(
                      style: TextStyle(fontSize: 80,color: Theme.of(context).primaryColor),
                      decoration: const InputDecoration(
                        hintText: "\u{20B9}00.0",
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
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),),
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16,left: 2,right: 1,bottom: 4),
                      child:Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: DropdownMenu<String>(
                          hintText: "Category",
                          width: 0.9 * MediaQuery.of(context).size.width,
                          // initialSelection: list2.first,
                          onSelected: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              String dropdownValue2 = list2.first;
                              dropdownValue2 = value!;
                            });
                          },
                          dropdownMenuEntries: list2.map<DropdownMenuEntry<String>>((String value) {
                            return DropdownMenuEntry<String>(value: value, label: value);
                          }).toList(),
                        ),
                      ),
                    ),

                    Container(
                      width: 343,
                      height: 75,
                      padding: const EdgeInsets.only(top: 10, right: 16, bottom: 10),
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              child: const Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Receive Alert',
                                    style: TextStyle(
                                      color: Color(0xFF292B2D),
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      'Receive alert when it reaches some point.',
                                      style: TextStyle(
                                        color: Color(0xFF90909F),
                                        fontSize: 13,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 42,
                            height: 24,
                            child: FlutterLogo(),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            backgroundColor: Theme.of(context).primaryColorDark,
                          ),
                          onPressed: (){
                            // Allset();
                            // Mail();
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=> Mail()));
                          }, child: const SizedBox(
                          height: 56,
                          width: double.infinity,
                          child: Center(child: Text('Continue',style: TextStyle(color: Colors.white,fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.bold),)))),
                    ),
                    const SizedBox(
                      height: 30
                      ,
                    ),
                  ]),
                ),
              ),
              // SizedBox(
              //   height: 40,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
