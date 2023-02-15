import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardHistory extends StatelessWidget {
  String assetImg;
  String name;
  String abbreviation;
  String money;
  double percent;
  CardHistory({
    required this.assetImg,
    required this.name,
    required this.abbreviation,
    required this.money,
    required this.percent
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  assetImg,
                  height: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    Text(
                      abbreviation,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.grey[600]),
                    )
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "\$${money} USD",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 18),
                ),
                Text(
                  "${percent>0 ? "" : " "}${percent.toString()}%",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: percent > 0 ? Colors.green : Colors.red),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
