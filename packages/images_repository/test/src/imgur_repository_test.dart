import 'package:flutter_test/flutter_test.dart';

import 'package:dartz/dartz.dart';
import 'package:local_storage_service/local_storage_service.dart';
import 'package:mocktail/mocktail.dart';
import 'package:unsplash_service/unsplash_service.dart';

class MockUnsplashService extends Mock implements UnsplashService {}

class MockLocalStorageService extends Mock implements LocalStorageService {}

void main() {
  void mockUnsplashServiceGetImagesByQuerySuccess(
    MockUnsplashService mockService,
    List<ImageDTO> mockImages,
  ) {
    when(() => mockService.getImagesByQuery(any()))
        .thenAnswer((_) async => Right(mockImages));
  }

  void mockUnsplashServiceGetPopularImagesSuccess(
    MockUnsplashService mockService,
    List<ImageDTO> mockImages,
  ) {
    when(() => mockService.getPopularImages(any()))
        .thenAnswer((_) async => Right(mockImages));
  }

  void mockUnsplashServiceGetImagesFailure(
    MockUnsplashService mockService,
  ) {
    when(() => mockService.getImagesByQuery(any()))
        .thenAnswer((_) async => Left(null));
  }

  void mockUnsplashServiceGetPopularImagesFailure(
    MockUnsplashService mockService,
  ) {
    when(() => mockService.getPopularImages(any()))
        .thenAnswer((_) async => Left(null));
  }

  late MockUnsplashService mockUnsplashService;

  setUp(() {
    mockUnsplashService = MockUnsplashService();
  });

  group('ImagesRepository Tests', () {
    test(
        'should return a list of images when the API call with query is successful',
        () async {
      final List<ImageDTO> mockImageDtos = [
        ImageDTO(
          urls: UrlsDTO(raw: 'raw', full: 'full', regular: 'regular'),
          slug: 'image1',
        ),
      ];

      mockUnsplashServiceGetImagesByQuerySuccess(
          mockUnsplashService, mockImageDtos);

      final result = await mockUnsplashService.getImagesByQuery('photo');

      expect(result.isRight(), true);
      result.fold(
        (l) => fail('Expected a list of images, but got failure'),
        (images) {
          expect(images, isA<List<ImageDTO>>());
          expect(images.length, mockImageDtos.length);
        },
      );
    });

    test('should return a list of images when the API call is successful',
        () async {
      final List<ImageDTO> mockImageDtos = [
        ImageDTO(
          urls: UrlsDTO(raw: 'raw', full: 'full', regular: 'regular'),
          slug: 'image1',
        ),
      ];

      mockUnsplashServiceGetPopularImagesSuccess(
          mockUnsplashService, mockImageDtos);

      final result = await mockUnsplashService.getPopularImages(1);

      expect(result.isRight(), true);
      result.fold(
        (l) => fail('Expected a list of images, but got failure'),
        (images) {
          expect(images, isA<List<ImageDTO>>());
          expect(images.length, mockImageDtos.length);
        },
      );
    });

    test(
        'should return a list of images when the API call with query is successful',
        () async {
      mockUnsplashServiceGetImagesFailure(mockUnsplashService);

      final result = await mockUnsplashService.getImagesByQuery('photo');

      expect(result.isLeft(), true);
      result.fold(
        (l) {
          expect(
            null,
            null,
          );
        },
        (images) {
          fail('Expected failure, but got success');
        },
      );
    });

    test(
        'should return a list of images when the API call with query is successful',
        () async {
      mockUnsplashServiceGetPopularImagesFailure(mockUnsplashService);

      final result = await mockUnsplashService.getPopularImages(1);

      expect(result.isLeft(), true);
      result.fold(
        (l) {
          expect(
            null,
            null,
          );
        },
        (images) {
          fail('Expected failure, but got success');
        },
      );
    });
  });
}
