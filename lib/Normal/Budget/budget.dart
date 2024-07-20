import 'package:financeapp/Normal/Budget/CBudget.dart';
import 'package:flutter/material.dart';

class Bud1 extends StatefulWidget {
  const Bud1({super.key});

  @override
  State<Bud1> createState() => _Bud1State();
}

class _Bud1State extends State<Bud1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      body: SafeArea(
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(child: Icon(Icons.arrow_back_ios,size: 40,color: Theme.of(context).primaryColorLight,)),
                    Container(child: Text("May",style: TextStyle(color: Theme.of(context).primaryColorLight,fontSize: 40),)),
                    Container(child: Icon(Icons.arrow_forward_ios,size: 40,color: Theme.of(context).primaryColorLight,)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(

                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),),
                  color: Theme.of(context).primaryColorLight,
                ),
                child: Column(
                  children: [
                    const Expanded(
                      child: Center(child: Text("You don’t have a budget.\nLet’s make one so you in control")
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            backgroundColor: Theme.of(context).primaryColorDark,
                          ),
                          onPressed: (){
                            // _showSuccessDialog(context);
                            // Allset();
                            // Mail();
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const Create()));
                          }, child: const SizedBox(
                          height: 56,
                          width: double.infinity,
                          child: Center(child: Text('Create a budget',style: TextStyle(color: Colors.white,fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.bold),)))),
                    ),
                  ],
                ),


              ),
            ),


          ],
        ),
      ),

    );
  }
}
