import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String url;

  NetworkHelper({this.url});

  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      //print(response.body);
      String json = response.body;

      var decodedData = jsonDecode(json);

      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
