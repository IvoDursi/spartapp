import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spart_app/home/home.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    PopularImagesList(),
    FavouriteImagesList(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    context.read<PopularImagesBloc>().add(PopularImagesEvent.get());
    context.read<FavouriteImagesBloc>().add(FavouriteImagesEvent.get());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomSearchBar(
          selectedIndex: _selectedIndex,
        ),
        backgroundColor: Color(0xff330000),
      ),
      backgroundColor: Colors.red[100],
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff330000),
        unselectedItemColor: Colors.red[200],
        selectedItemColor: Colors.grey[100],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Popular Images',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
