import 'package:dartz/dartz.dart';
import 'package:images_repository/model/image.dart';
import 'package:local_storage_service/local_storage_service.dart';
import 'package:local_storage_service/resources/keys.dart';
import 'package:unsplash_service/unsplash_service.dart';

/// Images Repository
class ImagesRepository {
  const ImagesRepository({
    required this.unsplashService,
    required this.localStorageService,
  });

  final UnsplashService unsplashService;
  final LocalStorageService localStorageService;

  Future<Either<void, List<Image>>> getImages({
    String? query,
    required int page,
  }) async {
    late Either<void, List<ImageDTO>> postsEither;

    if (query == null || query.isEmpty || query == '') {
      postsEither = await unsplashService.getPopularImages(page);
    } else {
      postsEither = await unsplashService.getImagesByQuery(query);
    }

    if (postsEither.isLeft()) {
      return Left(null);
    }

    final imagesDtos = (postsEither as Right<void, List<ImageDTO>>).value;

    final List<Image> images = imagesDtos
        .map(
          Image.fromPostDTO,
        )
        .toList();

    return Right(images);
  }

  Future<Either<void, List<Image>>> getFavouriteImages({
    String? query,
  }) async {
    final imagesEither = await localStorageService.get(
      key: StorageKeys.favouritesImagesKey,
      fromJson: (Map<String, dynamic> json) {
        final imagesJson = json['images'] as List<dynamic>;

        final List<Image> images =
            imagesJson.map((e) => e).map((e) => Image.fromJson(e)).toList();

        return images;
      },
    );

    return imagesEither.fold(
      (failure) => Right([]),
      (images) {
        if (query != null) {
          images = images?.where((image) {
            return image.slug.toLowerCase().contains(query.toLowerCase());
          }).toList();
        }
        return Right(images ?? []);
      },
    );
  }

  Future<Either<void, List<Image?>>> saveFavouriteImage({
    required Image image,
  }) async {
    final imagesEither = await localStorageService.get(
      key: StorageKeys.favouritesImagesKey,
      fromJson: (Map<String, dynamic> json) {
        final imagesJson = json['images'] as List<dynamic>;

        final List<Image> images =
            imagesJson.map((e) => e).map((e) => Image.fromJson(e)).toList();

        return images;
      },
    );

    List<Image?> images = [];

    if (imagesEither.isRight()) {
      images = (imagesEither as Right<void, List<Image>?>).value ?? [];
    }

    final updatedImages = List<Image?>.from(images)..add(image);

    await localStorageService.save(
      key: StorageKeys.favouritesImagesKey,
      value: {
        'images': updatedImages,
      },
    );

    return Right(updatedImages);
  }

  Future<Either<void, List<Image?>>> removeFavouriteImage({
    required Image image,
  }) async {
    final imagesEither = await localStorageService.get(
      key: StorageKeys.favouritesImagesKey,
      fromJson: (Map<String, dynamic> json) {
        final imagesJson = json['images'] as List<dynamic>;

        final List<Image> images =
            imagesJson.map((e) => e).map((e) => Image.fromJson(e)).toList();

        return images;
      },
    );

    List<Image?> images = [];

    if (imagesEither.isRight()) {
      images = (imagesEither as Right<void, List<Image>?>).value ?? [];
    }

    final updatedImages = List<Image?>.from(images)
      ..removeWhere((savedImage) => image == savedImage);

    await localStorageService.save(
      key: StorageKeys.favouritesImagesKey,
      value: {
        'images': updatedImages,
      },
    );

    return Right(updatedImages);
  }
}
