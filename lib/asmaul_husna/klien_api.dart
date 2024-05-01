import 'package:dakwah_y_up/asmaul_husna/respon_api.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiClient {
  static Future<List<EntityModel>> getAllAsmaulHusna() async {
    Uri url = Uri.parse("https://asmaul-husna-api.vercel.app/api/all"); // Api Terbaru
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var responseDecode = json.decode(response.body);
      List getData = responseDecode['data'];
      return getData.map((e) => EntityModel.fromJson(e)).toList();
    }else {
      throw Exception("Data not found");
    }
  }
}
