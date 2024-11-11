import 'package:bloc/bloc.dart';

import 'package:images_repository/images_repository.dart';
import 'package:spart_app/home/bloc/favourite/favourite_images_state.dart';
import 'package:spart_app/home/home.dart';

class FavouriteImagesBloc
    extends Bloc<FavouriteImagesEvent, FavouriteImagesState> {
  FavouriteImagesBloc({
    required this.imagesRepository,
  }) : super(const FavouriteImagesState.initial()) {
    on<GetFavouriteImages>(_getImages);
    on<SaveFavouriteImage>(_saveImage);
    on<RemoveFavouriteImage>(_removeImage);
  }

  int page = 0;
  bool isFetching = false;

  final ImagesRepository imagesRepository;

  Future<void> _getImages(
    GetFavouriteImages event,
    Emitter<FavouriteImagesState> emit,
  ) async {
    page = 0;
    isFetching = true;
    emit(FavouriteImagesState.loading());

    final imagesEither =
        await imagesRepository.getFavouriteImages(query: event.query);

    isFetching = false;

    imagesEither.fold(
      (failure) => emit(FavouriteImagesState.loaded(
        images: [],
      )),
      (images) {
        emit(FavouriteImagesState.loaded(images: images));
        page++;
      },
    );
  }

  Future<void> _saveImage(
    SaveFavouriteImage event,
    Emitter<FavouriteImagesState> emit,
  ) async {
    emit(FavouriteImagesState.loading());

    final imagesEither =
        await imagesRepository.saveFavouriteImage(image: event.image);

    imagesEither.fold(
      (failure) => emit(FavouriteImagesState.loaded(
        images: [],
      )),
      (savedImages) {
        emit(FavouriteImagesState.loaded(images: savedImages));
      },
    );
  }

  Future<void> _removeImage(
    RemoveFavouriteImage event,
    Emitter<FavouriteImagesState> emit,
  ) async {
    emit(FavouriteImagesState.loading());

    final imagesEither =
        await imagesRepository.removeFavouriteImage(image: event.image);

    imagesEither.fold(
      (failure) => emit(FavouriteImagesState.loaded(
        images: [],
      )),
      (savedImages) {
        emit(FavouriteImagesState.loaded(images: savedImages));
      },
    );
  }
}
