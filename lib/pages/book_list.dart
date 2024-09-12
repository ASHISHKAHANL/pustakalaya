// book_list_page.dart
import 'package:books_arena/pages/book_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:books_arena/utils/colors.dart';

class BookListPage extends StatelessWidget {
  // Sample list of books
  final List<Map<String, dynamic>> trendingBooks = [
    {
      'bookName': 'The Great Gatsby',
      'authorName': 'F. Scott Fitzgerald',
      'price': '\$29.99',
      'rating': '4.8',
      'image': 'assets/trending/book_1.jpeg',
      'tag': 'trending1',
      'isLiked': true
    },
    {
      'bookName': 'To Kill a Mockingbird',
      'authorName': 'Harper Lee',
      'price': '\$39.99',
      'rating': '4.7',
      'image': 'assets/trending/book_0.jpeg',
      'tag': 'trending2',
      'isLiked': false
    },
    {
      'bookName': '1984',
      'authorName': 'George Orwell',
      'price': '\$49.99',
      'rating': '4.9',
      'image': 'assets/trending/book_2.jpeg',
      'tag': 'trending3',
      'isLiked': true
    },
    // Add more books as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trending Books'),
        centerTitle: true,
        backgroundColor: BooksArenaColors.darkGreenColor,
      ),
      backgroundColor: BooksArenaColors.skinColor,
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: trendingBooks.length,
        itemBuilder: (context, index) {
          final book = trendingBooks[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 4,
            child: ListTile(
              contentPadding: const EdgeInsets.all(8),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  book['image'],
                  width: 60,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                book['bookName'],
                style: TextStyle(
                  color: BooksArenaColors.darkGreenColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book['authorName'],
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Price: ${book['price']}',
                    style: TextStyle(color: Colors.black87),
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.star_fill,
                        color: BooksArenaColors.mediumYellowColor,
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(book['rating']),
                    ],
                  ),
                ],
              ),
              trailing: Icon(
                book['isLiked']
                    ? CupertinoIcons.heart_fill
                    : CupertinoIcons.heart,
                color: book['isLiked']
                    ? BooksArenaColors.orangeColor
                    : Colors.grey,
              ),
              onTap: () {
                // Navigate to the Book Details page on tap
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookPage(
                      category: 'trending',
                      index: index,
                      bookName: book['bookName'],
                      authorName: book['authorName'],
                      tag: book['tag'],
                      isLiked: book['isLiked'],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
