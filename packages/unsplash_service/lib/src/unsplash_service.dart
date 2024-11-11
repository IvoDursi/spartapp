import 'dart:convert';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:unsplash_service/unsplash_service.dart';

/// Unsplash Service

class UnsplashService {
  const UnsplashService();

  final unsplash = 'https://api.unsplash.com';

  String get apikey => dotenv.env['UNSPLASH_API_KEY'] ?? '';

  Future<Either<void, List<ImageDTO>>> getPopularImages(int page) async {
    final url = Uri.parse(
      '$unsplash/photos?page=$page',
    );

    try {
      final response = await http.get(
        url,
        headers: {
          'Authorization': 'Client-ID $apikey',
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        log('Success: ${data}');

        final List<ImageDTO> images = data
            .map((e) => e as Map<String, dynamic>)
            .map((e) => ImageDTO.fromJson(e))
            .toList();

        return Right(images);
      } else if (response.statusCode == 500) {
        final errorData = jsonDecode(response.body);
        log('Error: ${errorData['message']}');
        return Left(null);
      } else {
        log('Server Error: ${response.statusCode}');
        return Left(null);
      }
    } catch (e) {
      return Left(null);
    }
  }

  Future<Either<void, List<ImageDTO>>> getImagesByQuery(String query) async {
    final url = Uri.parse(
      '$unsplash/search/photos?page=1&query=$query',
    );

    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Client-ID $apikey',
      },
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);

      final List<dynamic> imagesJson = data['results'];
      log('Success: ${data}');

      final List<ImageDTO> images = imagesJson
          .map((e) => e as Map<String, dynamic>)
          .map((e) => ImageDTO.fromJson(e))
          .toList();

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
