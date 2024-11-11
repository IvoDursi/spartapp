import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spart_app/home/bloc/favourite/favourite_images_state.dart';
import 'package:spart_app/home/home.dart';
import 'package:images_repository/images_repository.dart' as img;
import 'package:spart_app/resources/images.dart';

class CustomImagesGrid extends StatefulWidget {
  const CustomImagesGrid({
    super.key,
    required this.images,
  });

  final List<img.Image?> images;

  @override
  State<CustomImagesGrid> createState() => _CustomImagesGridState();
}

class _CustomImagesGridState extends State<CustomImagesGrid> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()..addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 400) {
      context.read<PopularImagesBloc>().add(PopularImagesEvent.getNextPage());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3),
      child: GridView.builder(
        controller: _scrollController,
        itemCount: widget.images.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => _showFullScreenImage(
              context,
              widget.images[index]!.urls.full,
            ),
            child: Container(
              height: 350,
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red[300],
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        filterQuality: FilterQuality.none,
                        imageUrl: widget.images[index]!.urls.raw,
                        fit: BoxFit.cover,
                        progressIndicatorBuilder: (context, widget, t) =>
                            Center(
                          child: CircularProgressIndicator(),
                        ),
                        errorWidget: (context, error, stackTrace) => Center(
                          child: Image.asset(AppImages.noData),
                        ),
                      ),
                    ),
                  ),
                  BlocBuilder<FavouriteImagesBloc, FavouriteImagesState>(
                    builder: (context, state) {
                      return Positioned(
                        bottom: 1,
                        right: 1,
                        child: IconButton(
                          icon: Icon(
                            Icons.star,
                            color: state.maybeWhen(
                              orElse: () => Colors.white,
                              loaded: (favouriteImages) =>
                                  favouriteImages.contains(widget.images[index])
                                      ? Colors.yellow[700]
                                      : Colors.white,
                            ),
                            size: 25,
                          ),
                          onPressed: () {
                            state.maybeWhen(
                              orElse: () {
                                context.read<FavouriteImagesBloc>().add(
                                      FavouriteImagesEvent.save(
                                          widget.images[index]!),
                                    );
                              },
                              loaded: (savedImages) {
                                if (savedImages
                                    .contains(widget.images[index])) {
                                  context.read<FavouriteImagesBloc>().add(
                                        FavouriteImagesEvent.remove(
                                            widget.images[index]!),
                                      );
                                } else {
                                  context.read<FavouriteImagesBloc>().add(
                                        FavouriteImagesEvent.save(
                                            widget.images[index]!),
                                      );
                                }
                              },
                            );
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
    );
  }

  void _showFullScreenImage(BuildContext context, String imageUrl) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.8),
      builder: (_) => Dialog(
        backgroundColor: Colors.transparent,
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Stack(
            children: [
              Center(
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.none,
                  progressIndicatorBuilder: (context, widget, t) => Center(
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (context, error, stackTrace) => Center(
                    child: Image.asset(AppImages.noData),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                right: 20,
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
