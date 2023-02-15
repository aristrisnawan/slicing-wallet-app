import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_aplication/pages/card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(color: Colors.grey, blurRadius: 5),
            ],
          ),
          child: BottomNavigationBar(
            unselectedItemColor: Colors.grey,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.wallet_rounded), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.incomplete_circle_outlined), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue[800],
            onTap: _onItemTapped,
          ),
        ),
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
                      Icon(
                        Icons.menu_rounded,
                        size: 30,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        child: Stack(
                          children: [
                            Icon(
                              Icons.notifications_none_rounded,
                              size: 30,
                            ),
                            Positioned(
                              top: 1,
                              right: 3,
                              child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(100)),
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
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Main Wallet",
                                style: GoogleFonts.poppins(
                                    fontSize: 20, fontWeight: FontWeight.w400),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_rounded,
                                size: 40,
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My balance",
                                style: GoogleFonts.poppins(
                                    color: Colors.grey[600]),
                              ),
                              Text(
                                "\$150 000",
                                style: GoogleFonts.poppins(
                                    fontSize: 30, fontWeight: FontWeight.w600),
                              )
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Receive
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.blue[800],
                                borderRadius: BorderRadius.circular(50)),
                            child: Center(
                              child: Icon(
                                Icons.arrow_downward_rounded,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Receive",
                            style: GoogleFonts.poppins(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      //Swap
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.blue[800],
                                borderRadius: BorderRadius.circular(50)),
                            child: Center(
                              child: Icon(
                                Icons.swap_horiz_rounded,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Swap",
                            style: GoogleFonts.poppins(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      //Send
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.blue[800],
                                borderRadius: BorderRadius.circular(50)),
                            child: Center(
                              child: Icon(
                                Icons.north_east,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Send",
                            style: GoogleFonts.poppins(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      //Buy
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.blue[800],
                                borderRadius: BorderRadius.circular(50)),
                            child: Center(
                              child: Icon(
                                Icons.wallet_rounded,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Buy",
                            style: GoogleFonts.poppins(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ],
                  ),
                  //History
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Last transaction",
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Last trasaction",
                        style: GoogleFonts.poppins(color: Colors.grey[500]),
                      )
                    ],
                  ),
                  //Card history
                  SizedBox(
                    height: 10,
                  ),
                  CardHistory(
                      assetImg: "lib/assets/bitcoin.png",
                      name: "Bitcoin",
                      abbreviation: "BTC",
                      money: "20,429.27",
                      percent: -0.59),
                  CardHistory(
                      assetImg: "lib/assets/ethereum.png",
                      name: "Ethereum",
                      abbreviation: "ETH",
                      money: "1,559.49",
                      percent: -0.48),
                  CardHistory(
                      assetImg: "lib/assets/tether.png",
                      name: "Tether",
                      abbreviation: "USDT",
                      money: "1.02",
                      percent: 0.95),
                  CardHistory(
                      assetImg: "lib/assets/bnb.png",
                      name: "BNB",
                      abbreviation: "BNB",
                      money: "336.74",
                      percent: 3.92),
                  SizedBox(
                    height: 10,
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
