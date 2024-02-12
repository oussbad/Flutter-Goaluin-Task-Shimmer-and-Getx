import 'dart:convert';

import 'package:get/get.dart';

import '../model/user.dart';
import 'package:dio/dio.dart';

class Controller extends GetxController {
  var isLoading = false.obs;

  List<User> user = [];
  final dio = Dio();
  final String uri = 'https://jsonplaceholder.typicode.com/todos';

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
    getHttp();
  }

  void getHttp() async {
    try {
      isLoading(true);

      final response = await dio.get(uri);
      if (response.statusCode == 200) {
        var result = jsonDecode(response.data);
        print(result);
        this.user =result;
        //return result;

      }
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }
}
