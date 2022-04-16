class catalogmodel {
  static final items = [
    Item(
        id: 1,
        name: "Iphone 13 pro max",
        desc: " it us a very good phone",
        price: 1099,
        color: "#335505a",
        img: "https://m.media-amazon.com/images/I/617FFRO3vcL.jpg"),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String img;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.img,
  });
}
