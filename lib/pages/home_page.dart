import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  //Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu_rounded,size: 30,),
                      Container(
                        height: 30,
                        width: 30,
                        child: Stack(
                          children: [
                            Icon(Icons.notifications_none_rounded,size: 30,),
                            Positioned(
                              top: 1,
                              right: 3,
                              child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(100)
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  // Banner
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width/1,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("Main Wallet",style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w400
                              ),),
                              Icon(Icons.keyboard_arrow_down_rounded,size: 40,)

                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("My balance",style: GoogleFonts.poppins(
                                color: Colors.grey[600]
                              ),),
                              Text("\$150 000",style: GoogleFonts.poppins(
                                fontSize: 30,
                                fontWeight: FontWeight.w600
                              ),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  //Menus
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue[800],
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(
                          child: Icon(Icons.arrow_downward_rounded, color: Colors.white,),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
