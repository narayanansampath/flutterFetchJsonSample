import 'dart:async';
import 'Response.dart';
import 'network_util.dart';

class RestDatasource {
  NetworkUtil _netUtil = new NetworkUtil();

  Future<Response> getData() {
    return _netUtil.get('https://next.json-generator.com/api/json/get/NkzYu3pfO').then((dynamic res) {
      print(res.toString());
        return new Response.fromJson(res[0]); //Response is a JsonArray so we are taking only the first element of it.
  });
  }

}
