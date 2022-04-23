import 'package:flutter/foundation.dart';
import 'package:udemyfreecourse/model/catModel.dart';

import '../model/catModel.dart';
import '../model/course_model.dart';
import 'package:flutter/material.dart';

List<categoryModel> getCat() {
  List<categoryModel> cat = <categoryModel>[];
  categoryModel? CategoryModel;

  CategoryModel = new categoryModel();
  CategoryModel.color = Color(0xff99CAE1);
  CategoryModel.catName = "Development";
  CategoryModel.imgUrl = "assets/images/dev.svg";
  if (CategoryModel != null) {
    cat.add(CategoryModel);
  }

  CategoryModel = new categoryModel();
  CategoryModel.color = Color(0xffE19999);
  CategoryModel.catName = "Networking";
  CategoryModel.imgUrl = "assets/images/netwrk.svg";
  if (CategoryModel != null) {
    cat.add(CategoryModel);
  }

  return cat;
}
