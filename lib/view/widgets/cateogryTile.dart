import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryTile extends StatelessWidget {
  CategoryTile({Key? key, this.catName, this.color, this.imageUrl})
      : super(key: key);
  String? imageUrl;
  String? catName;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 157,
      width: 128,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(16)),
      margin: EdgeInsets.only(right: 14),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(imageUrl!),
          SizedBox(
            height: 14,
          ),
          Text(
            catName!,
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
