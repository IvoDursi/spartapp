import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imgur_service/imgur_service.dart';
import 'package:spartapp/home/home.dart';
import 'package:spartapp/home/widget/popular_images_list.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeImagesBloc(
        imgurService: context.read<ImgurService>(),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Spartapp'),
        ),
        body: PopularImagesList(),
      ),
    );
  }
}
