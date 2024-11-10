import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:imgur_service/dto/image_dto.dart';
import 'package:http/http.dart' as http;

/// Imgur Service

class ImgurService {
  const ImgurService();

  final baseUrl = 'https://api.imgur.com/';
  final clientId = 'a73c221eb4929a939e8dbf77dd93e78e27a88d76';

  Future<Either<void, List<ImageDTO>>> getPopularImages() async {
    final url = Uri.parse(
      '$baseUrl/3/gallery/top/viral',
    );

    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Client-ID $clientId',
      },
    );

    if (response.statusCode == 200) {
      final List<Map<String, dynamic>> data = jsonDecode(response.body);
      log('Success: ${data}');

      final images = data.map((e) => ImageDTO.fromJson(e)).toList();

      return Right(images);
    } else if (response.statusCode == 500) {
      final errorData = jsonDecode(response.body);
      log('Error: ${errorData['message']}');
      return Left(null);
    } else {
      log('Server Error: ${response.statusCode}');
      return Left(null);
    }
  }
}
