import 'dart:convert';


import 'package:pixel_app/constants/constants.dart';
import 'package:pixel_app/failures/main_failures.dart';
import 'package:pixel_app/models/search_home/post_list_resp/post_list_resp.dart';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
class SearchHomeService {
  Future<Either<MainFailure,PostListResp>>getAll() async {
    final uri = Uri.parse(url);

    try {
      final response = await http.get(uri, headers: apiKey);
      print(response.body.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final resJson = jsonDecode(response.body);
        final data = PostListResp.fromJson(resJson);
       print(data.toString());
        return Right(data );

      } else {
       return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
     return const Left(MainFailure.clientFailure());
    }
  }
}
