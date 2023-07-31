// ignore_for_file: public_member_api_docs, sort_constructors_first
class Booklist {
  String imageUrl;
  String writers;
  String title;
  Booklist({
    required this.imageUrl,
    required this.writers,
    required this.title,
  });
}

List<Booklist> bookLists = [
  Booklist(
      imageUrl: 'assets/images/trendingbook_1.png',
      writers: 'Guy Kawasaki',
      title: 'Enchantment'),
  Booklist(
      imageUrl: 'assets/images/trendingbook_2.png',
      writers: 'Aaron Mahnke',
      title: 'Lore'),
  Booklist(
      imageUrl: 'assets/images/trendingbook_3.png',
      writers: 'Spencer Johnson M.D',
      title: 'Who Move By Cheese'),
];
