import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spart_app/home/home.dart';

class PopularImagesList extends StatelessWidget {
  const PopularImagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularImagesBloc, PopularImagesState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (images) => images.isNotEmpty
              ? CustomImagesGrid(images: images)
              : Center(
                  child: Text(
                    'There is no images',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
        );
      },
    );
  }
}
