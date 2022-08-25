class CatalogBook {
  String titleBook;
  String authorBook;
  String descBook;
  String rating;
  String pages;
  String languages;
  String imageAsset;

  CatalogBook({
    required this.titleBook,
    required this.authorBook,
    required this.descBook,
    required this.rating,
    required this.pages,
    required this.languages,
    required this.imageAsset,
  });
}

var catalogBookList = [
  CatalogBook(
    titleBook: 'It Sounds Good To Me',
    authorBook: 'Gloria G. Fernandes',
    descBook:
        'Feel good, sound good, or something in-between? The best way to describe it is with a catchy tune. Here are the most popular songs in the world, that make you feel good.',
    rating: '4.5',
    pages: '800',
    languages: 'ENG/INA',
    imageAsset: 'images/book-1.jpg',
  ),
  CatalogBook(
    titleBook: 'The Sun of The Lodestar',
    authorBook: 'Theodore E. Castillo',
    descBook:
        'The Sun of The Lodestar is a lovely account of the life of a young man who, in time, becomes a priest but is then called to live a life of exile.',
    rating: '4.1',
    pages: '1000',
    languages: 'ESP',
    imageAsset: 'images/book-2.jpg',
  ),
  CatalogBook(
    titleBook: 'Buliding Your Own Cult',
    authorBook: 'Arnold D. Fabrgasi',
    descBook:
        'Building your own cult is a dangerous, but effective way to become rich and famous. This step-by-step guide will show you how to set up your own cult and make the most of it.',
    rating: '4.8',
    pages: '950',
    languages: 'ENG',
    imageAsset: 'images/book-3.jpg',
  ),
  CatalogBook(
    titleBook: 'The Mind of A Leader',
    authorBook: 'Kevin Anderson',
    descBook:
        'The Mind of a Leader is an easy-to-follow step-by-step guide to developing a powerful mindset that enables you to lead others to greatness.',
    rating: '5.0',
    pages: '1200',
    languages: 'ENG/INA/ESP',
    imageAsset: 'images/book-4.jpg',
  ),
  CatalogBook(
    titleBook: 'Book Cover Design Formula',
    authorBook: 'Anita Nipane',
    descBook:
        'The book cover design formula is a simple way to create a book cover that sells your book. It`s based on the most effective book cover design principles and research.',
    rating: '4.0',
    pages: '500',
    languages: 'FR/ENG',
    imageAsset: 'images/book-5.jpg',
  ),
  CatalogBook(
    titleBook: 'Horror Stories',
    authorBook: 'Ken Adams',
    descBook:
        'Horror stories are a great way to scare people. If you`re a horror fan, you can make your own, or you can turn a horror story into a game by reading it to others.',
    rating: '4.4',
    pages: '750',
    languages: 'ENG',
    imageAsset: 'images/book-6.jpg',
  ),
  CatalogBook(
    titleBook: 'The True Story',
    authorBook: 'Daniel Letterman',
    descBook:
        'This book is a collection of true stories, written by one of the most fascinating and accomplished women on the frontlines of technology and entrepreneurship.',
    rating: '4.4',
    pages: '850',
    languages: 'ENG',
    imageAsset: 'images/book-7.jpg',
  ),
  CatalogBook(
    titleBook: 'Vintage Tales',
    authorBook: 'Norman Clough',
    descBook:
        'Vintage Tales is a collection of short stories, mostly in prose, that draw on history, fairy tales, and folklore. It is the first book in a planned series.',
    rating: '4.9',
    pages: '950',
    languages: 'ENG',
    imageAsset: 'images/book-8.jpg',
  ),
];
