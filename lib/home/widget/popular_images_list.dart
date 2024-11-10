import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spart_app/home/home.dart';

class PopularImagesList extends StatefulWidget {
  const PopularImagesList({super.key});

  @override
  State<PopularImagesList> createState() => _PopularImagesListState();
}

class _PopularImagesListState extends State<PopularImagesList> {
  @override
  void initState() {
    context.read<HomeImagesBloc>().add(HomeImagesEvent.get());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeImagesBloc, HomeImagesState>(
      builder: (context, state) {
        return ListView.builder(
          itemBuilder: (context, index) => Container(
            child: Image.network(
              'https://cdns-images.dzcdn.net/images/artist/1907c0b7283500b2538e36ff5cfc189b/1900x1900-000000-80-0-0.jpg',
            ),
          ),
        );
      },
    );
  }
}
