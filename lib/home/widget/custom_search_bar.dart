import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spart_app/home/home.dart';

class CustomSearchBar extends StatefulWidget {
  CustomSearchBar({
    this.selectedIndex = 0,
    super.key,
  });

  final int selectedIndex;

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _searchController,
      decoration: InputDecoration(
        hintText: 'Search images...',
        border: InputBorder.none,
        hintStyle: TextStyle(color: Colors.white70),
      ),
      style: TextStyle(color: Colors.white),
      onChanged: (query) => widget.selectedIndex == 0
          ? context.read<PopularImagesBloc>().add(
                PopularImagesEvent.get(query: query),
              )
          : context.read<FavouriteImagesBloc>().add(
                FavouriteImagesEvent.get(
                  query: query,
                ),
              ),
    );
  }
}
