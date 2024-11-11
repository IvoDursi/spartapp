import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spart_app/home/bloc/favourite/favourite_images_state.dart';
import 'package:spart_app/home/home.dart';
import 'package:spart_app/resources/images.dart';

class FavouriteImagesList extends StatelessWidget {
  const FavouriteImagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouriteImagesBloc, FavouriteImagesState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (images) => images.isNotEmpty
              ? CustomImagesGrid(images: images)
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.noData),
                      Text(
                        'There is no images',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
        );
      },
    );
  }
}
