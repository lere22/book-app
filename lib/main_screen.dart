// ignore_for_file: library_private_types_in_public_api

import 'package:book_app/detail_book.dart';
import 'package:flutter/material.dart';
import 'package:book_app/model/catalog_book.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70.0),
            child: AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: const Text(
                      "Catalog Books",
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w800,
                          color: Color.fromRGBO(41, 50, 65, 1)),
                    ),
                  )
                ],
              ),
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromRGBO(194, 233, 251, 1),
                    Color.fromRGBO(161, 196, 253, 1)
                  ],
                )),
              ),
              elevation: 3.0,
            )),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
          child: ListView.builder(
            itemCount: catalogBookList.length,
            itemBuilder: (context, index) {
              final CatalogBook book = catalogBookList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailBook(book: book);
                  }));
                },
                child: Card(
                  elevation: 2.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(5.0),
                                    bottomLeft: Radius.circular(5.0)),
                                image: DecorationImage(
                                    image: AssetImage(book.imageAsset),
                                    fit: BoxFit.cover)),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  book.titleBook,
                                  style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(41, 50, 65, 1)),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  book.authorBook,
                                  style: const TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(158, 197, 219, 1)),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }
}
