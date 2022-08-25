// ignore_for_file: library_private_types_in_public_api

import 'package:book_app/model/catalog_book.dart';
import 'package:flutter/material.dart';

class DetailBook extends StatelessWidget {
  final CatalogBook book;

  const DetailBook({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromRGBO(194, 233, 251, 1),
                        Color.fromRGBO(161, 196, 253, 1)
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      SafeArea(
                          child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(
                                        Icons.arrow_back,
                                        color: Color.fromRGBO(41, 50, 65, 1),
                                        size: 30.0,
                                      )),
                                  const Text("Detail Book",
                                      style: TextStyle(
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.w700,
                                          color:
                                              Color.fromRGBO(41, 50, 65, 1))),
                                  const BookmarkButton(),
                                ],
                              ))),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding:
                                const EdgeInsets.only(top: 40.0, bottom: 70.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                book.imageAsset,
                                scale: 2,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  right: -300,
                  left: 0,
                  bottom: -25,
                  child: FavoriteButton(),
                ),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 40.0),
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  book.titleBook,
                  style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(41, 50, 65, 1)),
                )),
            Container(
                margin: const EdgeInsets.only(top: 5.0),
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  book.authorBook,
                  style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(158, 197, 219, 1)),
                )),
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Text("Rating",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(158, 197, 219, 1))),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star,
                            size: 18.0,
                            color: Colors.amber,
                          ),
                          Text(book.rating,
                              style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(41, 50, 65, 1))),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const Text("Pages",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(158, 197, 219, 1))),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(book.pages,
                          style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(41, 50, 65, 1))),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("Language",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(158, 197, 219, 1))),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        book.languages,
                        style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(41, 50, 65, 1)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 25.0),
                padding: const EdgeInsets.only(bottom: 25.0),
                child: Text(
                  book.descBook,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      height: 1.2,
                      color: Color.fromRGBO(41, 50, 65, 1)),
                )),
          ],
        ),
      ),
    );
  }
}

// Bookmark Handle
class BookmarkButton extends StatefulWidget {
  const BookmarkButton({Key? key}) : super(key: key);

  @override
  _BookmarkButtonState createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  bool isBookmark = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isBookmark ? Icons.bookmark : Icons.bookmark_border,
        color: const Color.fromRGBO(41, 50, 65, 1),
        size: 30.0,
      ),
      onPressed: () {
        setState(() {
          isBookmark = !isBookmark;
        });
      },
    );
  }
}

// Favorite Handle
class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      backgroundColor: const Color.fromRGBO(158, 197, 219, 1),
      elevation: 0,
      child: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.white,
        size: 27.0,
      ),
    );
  }
}
