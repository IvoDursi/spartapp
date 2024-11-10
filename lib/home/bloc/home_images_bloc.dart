import 'package:bloc/bloc.dart';
import 'package:imgur_service/imgur_service.dart';
import 'package:spart_app/home/bloc/home_images_event.dart';
import 'package:spart_app/home/bloc/home_images_state.dart';

class HomeImagesBloc extends Bloc<HomeImagesEvent, HomeImagesState> {
  HomeImagesBloc({
    required this.imgurService,
  }) : super(const HomeImagesState.initial()) {
    on<GetImages>(_getImages);
  }

  final ImgurService imgurService;

  Future<void> _getImages(
    GetImages event,
    Emitter<HomeImagesState> emit,
  ) async {
    final imagesEither = await imgurService.getPopularImages();

    if (imagesEither.isLeft()) {
      return emit(HomeImagesState.failed(error: 'error'));
    }

    // TODO:
  }
}
