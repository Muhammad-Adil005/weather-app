import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  final String? url;

  NetworkHelper(this.url);

  // This function is for to get the Data from an internet using an Api called openWeather Api using
  // an http package
  Future getData() async {
    if (url == null) {
      print("URL is null.");
      return null;
    }

    Uri uri = Uri.parse(url!); // Parse the String URL to a Uri object
    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      String data = response.body;
      //print('data : $data'); // This will print out all the response coming from an API inside the console

      return jsonDecode(data);
    } else {
      print(response.statusCode);
      // Handle the error here if needed
    }
  }
}
