import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../AppLayer/Overseer.dart';
import 'TrainModel.dart';

//import 'TrainModel.dart';
// import 'package:apipractice/pitem/GetSunnahPosts.dart';

class HomeService {
  static String _url = 'https://jsonplaceholder.typicode.com/todos';

  // URL

  static Future<bool> saveActivity() async {
    http.Response response = await http.post(Uri.parse(""), headers: {
      'Access-Control-Allow-Origin': '*',
      'Accept': 'application/json',
      'Authorization':
          'Bearer dKz99vl2FrdIpccgb1GUbXcNgfzpqvLrEg6gs5EscioQzy2iwdezfWEuLUY3',
    });

    print("got the response");
    String content = response.body;
    Overseer.printWrapped(content);

    print("printig from service >>>1 ${content}");

    if (content.contains("Post Viewed")) {}

    return true;
  }

  static Future<List<TrainModel>> browse() async {
    print("getting data");
    http.Response response = await http.get(
        Uri.parse("http:4//etradeverse.com/Train/public/api/trainshow"),
        headers: {
          'Access-Control-Allow-Origin': '*',
          'Accept': 'application/json',
          // 'Authorization':
          //     'Bearer dKz99vl2FrdIpccgb1GUbXcNgfzpqvLrEg6gs5EscioQzy2iwdezfWEuLUY3',
        });

    print("got the response");
    String content = response.body;
    Overseer.printWrapped(content);

    print("printig from service >>>1 ${content}");
    // var cont = [content];
    List collection = json.decode(content);

    List<TrainModel> _TrainModelList =
        collection.map((json) => TrainModel.fromJson(json)).toList();

    print("the count is ${_TrainModelList.length}");
    return _TrainModelList;
  }
}

void main() {
  HomeService.browse();
}
