import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:pixel_app/constants/constants.dart';
import 'package:pixel_app/failures/main_failures.dart';
import 'package:pixel_app/models/image_details/comment_list_resp/comment_list_resp.dart';

  
class ImageDetailsService{
   Future<Either<MainFailure, CommentListResp>> getAll()async{
      final uri=Uri.parse("https://dummyapi.io/data/v1/post/60d21af267d0d8992e610b8d/comment?limit=10");
   
   try{
    final response = await  http.get(uri,headers: apiKey);
           print(response.body.toString());
        if(response.statusCode==200||response.statusCode==201){
          final resAsJson= jsonDecode(response.body);
             final data=  CommentListResp.fromJson(resAsJson);
             print(data.toString());
             return  Right(data);

        }else{
           return const Left(MainFailure.serverFailure());
        }
        }
      catch(e){
        return const Left(MainFailure.clientFailure());

      }

   }
}