import 'package:flutter/material.dart';

class Pro extends StatefulWidget {
  const Pro({super.key});

  @override
  State<Pro> createState() => _ProState();
}

class _ProState extends State<Pro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child:
        Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // mainAxisSize: MainAxisSize.min,
                  children: [
                    const Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage("assets/images/page.png",),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 0.1 * MediaQuery.of(context).size.width,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10,),
                        Text("Username",style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 20),),
                        Text("Iriana Saliha",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.w600,fontSize: 22),),
                      ],
                    ),
                    SizedBox(
                      width: 0.1 * MediaQuery.of(context).size.width,
                    ),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.edit,size: 40,),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                color: Colors.white
                ),
                height: 400,
                child: ListView(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Row(
                    //   children: [
                    //     Text("Reports"),
                    //   ],
                    // ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          // border: Border.all(),
                        ),
                        child: const ListTile(
                          leading: Icon(Icons.account_balance_wallet),
                          title: Text("Account"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          // border: Border.all(),
                        ),
                        child: const ListTile(
                          leading: Icon(Icons.settings),
                          title: Text("Settings"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ),
                    // Row(
                    //   children: [
                    //     Text("Help"),
                    //   ],
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Card(
                        color: Theme.of(context).primaryColorLight,
                        elevation: 9,
                        child: const ListTile(
                          leading: Icon(Icons.import_export),
                          title: Text("Export Data"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Card(
                        color: Theme.of(context).primaryColorLight,
                        elevation: 9,
                        child: const ListTile(
                          leading: Icon(Icons.logout),
                          title: Text("Logout"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
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
