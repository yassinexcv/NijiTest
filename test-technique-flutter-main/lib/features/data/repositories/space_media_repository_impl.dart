import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import '../models/space_media_model.dart';

class SpaceMediaRepositoryImpl {
  Map<String, String> headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  };
  Future<SpaceMediaModel> GetSpaceMediaByDate(
    DateTime date,
  ) async {
    final String formattedDate = DateFormat('yyyy-MM-dd').format(date);
    final Uri url = Uri.parse(
        'https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY&date=$formattedDate');

    try {
      var response = await http.get(url, headers: headers);
      final Map<String, dynamic> resBody =
          json.decode(response.body) as Map<String, dynamic>;
     
      if (response.statusCode == 200) {
        return SpaceMediaModel.fromJson(resBody);
      }

      return Future.error('e');
    } catch (e) {
      return Future.error('e');
    }
  }
}
