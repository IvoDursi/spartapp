import 'package:bloc/bloc.dart';
import 'package:images_repository/images_repository.dart';

import 'package:spart_app/home/bloc/popular/popular_images_event.dart';
import 'package:spart_app/home/bloc/popular/popular_images_state.dart';

class PopularImagesBloc extends Bloc<PopularImagesEvent, PopularImagesState> {
  PopularImagesBloc({
    required this.imagesRepository,
  }) : super(const PopularImagesState.initial()) {
    on<GetImages>(_getImages);
    on<GetNextImagesPage>(_getNextPage);
  }

  int page = 0;
  bool isFetching = false;
  final ImagesRepository imagesRepository;

  Future<void> _getImages(
    GetImages event,
    Emitter<PopularImagesState> emit,
  ) async {
    page = 0;
    isFetching = true;
    emit(PopularImagesState.loading());

    final imagesEither =
        await imagesRepository.getImages(page: page, query: event.query);

    isFetching = false;

    imagesEither.fold(
      (failure) => emit(PopularImagesState.loaded(images: [])),
      (images) {
        emit(PopularImagesState.loaded(images: images));
        page++;
      },
    );
  }

  Future<void> _getNextPage(
    GetNextImagesPage event,
    Emitter<PopularImagesState> emit,
  ) async {
    if (isFetching || state is GetNextImagesPage) return;
    isFetching = true;

    final currentImages = state.maybeWhen(
      loaded: (images) => images,
      orElse: () => <Image>[],
    );

    final imagesEither = await imagesRepository.getImages(page: page);
    isFetching = false;

    imagesEither.fold(
      (failure) =>
          emit(PopularImagesState.failed(error: 'Error fetching next page')),
      (newImages) {
        final updatedImages = List<Image>.from(currentImages)
          ..addAll(newImages);
        emit(PopularImagesState.loaded(images: updatedImages));

        if (newImages.isNotEmpty) page++;
      },
    );
  }
}
