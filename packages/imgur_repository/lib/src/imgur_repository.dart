import 'package:dartz/dartz.dart';
import 'package:imgur_repository/model/image.dart';
import 'package:imgur_service/imgur_service.dart';

/// Imgur Repository
class ImgurRepository {
  const ImgurRepository({
    required this.imgurService,
  });

  final ImgurService imgurService;

  Future<Either<void, List<Image>?>> getImages() async {
    final postsEither = await imgurService.getPopularImages();

    if (postsEither.isLeft()) {
      final failure = (postsEither as Left<String, List<ImageDTO>>).value;
      return Left(null);
    }

    final imagesDtos = (postsEither as Right<String, List<ImageDTO>>).value;

    final images = imagesDtos
        .map(
          Image.fromPostDTO,
        )
        .toList();

    return Right(images);
  }
}
