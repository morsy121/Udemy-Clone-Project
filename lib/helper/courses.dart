import 'dart:convert';
import 'dart:ui';
import "package:http/http.dart" as http;
import 'package:udemyfreecourse/model/course_model.dart';

class Course {
  List<courseModel> courses = <courseModel>[];
  Future<void> getCourse() async {
    var url = "https://sumanjay.vercel.app/udemy";
    var response = await http.get(Uri.parse(url), headers: {
      "access-control-allow-origin": "*",
    });
    var jsonData = await json.decode(json.encode(response.body));
    //var jsonData = jsonDecode(response.body);
    if (response.statusCode == 200) {
      jsonData.forEach((element) {
        courseModel CoursModel = courseModel(
            heading: element["title"],
            image: element["image"],
            coursLink: element["link"],
            successRate: element[""]);
        courses.add(CoursModel);
      });
    } else {
      print(response.statusCode);
    }
  }
}

class catCourse {
  List<courseModel> courses = <courseModel>[];
  Future<void> getCourse(String cat) async {
    var url = "https://udemycoupon.herokuapp.com/";
    var response = await http.get(Uri.parse(url), headers: {
      "access-control-allow-origin": "*",
    });
    var jsonData = jsonDecode(response.body);
    if (response.statusCode == 200) {
      jsonData[0]["$cat"].forEach((element) {
        courseModel CoursModel = courseModel(
            heading: element["heading"],
            image: element["image"],
            coursLink: element["courselink"],
            successRate: element["successRate"]);
        courses.add(CoursModel);
      });
    } else {
      print(response.statusCode);
    }
  }
}
