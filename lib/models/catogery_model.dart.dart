class Catogery_model {
  final String image;
  final String title;

  Catogery_model({
    required this.image,
    required this.title,
  });
}

List<Catogery_model> catogeries = [
  Catogery_model(image: "assets/images/1.jpg", title: "sports"),
  Catogery_model(image: "assets/images/2.jpg", title: "business"),
  Catogery_model(image: "assets/images/3.jpg", title: "science"),
  Catogery_model(image: "assets/images/4.jpg", title: "technology")
];
