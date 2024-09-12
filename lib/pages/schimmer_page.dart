import 'package:books_arena/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class SchimmerPage extends StatefulWidget {
  @override
  _SchimmerPageState createState() => _SchimmerPageState();
}

class _SchimmerPageState extends State<SchimmerPage> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    // Simulate a network call or any async process
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),
      body: _isLoading ? _buildShimmerEffect() : HomePage(),
      // bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildShimmerEffect() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildShimmerHeader(),
              SizedBox(height: 17),
              _buildShimmerAuthorsList(),
              SizedBox(height: 17),
              _buildShimmerCategoryTabs(),
              SizedBox(height: 17),
              _buildShimmerBookList(),
              SizedBox(height: 17),
              _buildShimmerBookList(),
              SizedBox(height: 17),
              _buildShimmerFotterList(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildShimmerHeader() {
    return Shimmer(
        color: Colors.grey[300]!,
        //  highlightColor: Colors.grey[100]!,
        child: Container(
          width: double.infinity,
          height: 40.0,
          color: Colors.white,
        ));
  }

  Widget _buildShimmerAuthorsList() {
    return Shimmer(
      color: Colors.grey[300]!,
      //   highlightColor: Colors.grey[100]!,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(4, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleAvatar(
              radius: 28,
              backgroundColor: Colors.white,
            ),
          );
        }),
      ),
    );
  }

  Widget _buildShimmerCategoryTabs() {
    return Shimmer(
      color: Colors.grey[300]!,
      //  highlightColor: Colors.grey[100]!,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(4, (index) {
          return Container(
            height: 35,
            width: 80,
            color: Colors.white,
          );
        }),
      ),
    );
  }

  Widget _buildShimmerBookList() {
    return Shimmer(
      color: Colors.grey[300]!,
      // highlightColor: Colors.grey[100]!,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(2, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 140,
              height: 200,
              color: Colors.white,
            ),
          );
        }),
      ),
    );
  }

  // Widget _buildShimmerFotterList() {
  //   return Shimmer(
  //     color: Colors.grey[300]!,
  //     //   highlightColor: Colors.grey[100]!,
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //       children: List.generate(1, (index) {
  //         return Padding(
  //           padding: const EdgeInsets.symmetric(horizontal: 8.0),
  //           child: Icon(Icons.home),
  //           // Icon(Icons.person)

  //           //  CircleAvatar(
  //           //   radius: 28,
  //           //   backgroundColor: Colors.white,
  //           // ),
  //         );
  //       }),
  //     ),
  //   );
  // }
  Widget _buildShimmerFotterList() {
    return BottomNavigationBar(
      backgroundColor: Colors.grey[300]!,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          label: ' ',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          label: ' ',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.bookmark,
            color: Colors.white,
          ),
          label: ' ',
        ),
      ],
    );
  }
}
