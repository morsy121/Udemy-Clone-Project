import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udemyfreecourse/helper/courses.dart';
import 'package:udemyfreecourse/helper/dataCategory.dart';
import 'package:udemyfreecourse/model/catModel.dart';
import 'package:udemyfreecourse/model/course_model.dart';
import 'package:udemyfreecourse/view/widgets/cateogryTile.dart';
import 'package:udemyfreecourse/view/widgets/courseTile.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  List<categoryModel> cats = [];
  List<courseModel> course = [];

  bool? _loading = true;

  @override
  void initState() {
    cats = getCat();
    getCourse();
    super.initState();
  }

  getCourse() async {
    Course course = Course();
    course.getCourse();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xffFFFFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffFFFFF),
        flexibleSpace: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Hello",
                    style: GoogleFonts.notoSans(
                        fontSize: 16,
                        color: Color(0XFF747474),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Find your Free Courses",
                    style: GoogleFonts.notoSans(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff232323)),
                  ),
                ],
              ),
              SvgPicture.asset(
                "assets/images/love.svg",
                color: Color(0xff99CAE1),
              ),
            ],
          ),
        )),
      ),
      body: _loading!
          ? Center(
              child: Container(
                child: SpinKitWave(
                  color: Color(0xff99CAE1),
                  size: 30.0,
                ),
              ),
              ////categories
            )
          : SingleChildScrollView(
              child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Category",
                      style: GoogleFonts.notoSans(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff232323)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 40,
                    ),
                    width: double.infinity,
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: cats.length,
                      itemBuilder: (context, index) => CategoryTile(
                        imageUrl: cats[index].imgUrl!,
                        catName: cats[index].catName!,
                        color: cats[index].color!,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Courses",
                      style: GoogleFonts.notoSans(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff232323)),
                    ),
                  ),
                  Container(
                    child: ListView.builder(
                      itemCount: course.length,
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, int index) => CourseTile(
                        courseURL: course[index].coursLink!,
                        imageURL: course[index].image!,
                        title: course[index].heading!,
                      ),
                    ),
                  ),
                ],
              ),
            )),
    );
  }
}
