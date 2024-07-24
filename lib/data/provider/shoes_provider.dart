import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:ltddnc/data/models/shoe.dart';

class ReadData {
  Future<List<Shoe>> loadData() async {
    var data = await rootBundle.loadString('assets/files/shoe_list.json');
    var dataJson = jsonDecode(data);

    return (dataJson['data'] as List).map((e) => Shoe.fromJson(e)).toList();
  }
}
