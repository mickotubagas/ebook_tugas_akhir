class Recent {
  final String title, image, page;
  final int percent;

  Recent({
    required this.title,
    required this.image,
    required this.percent,
    required this.page,
  });
}

List<Recent> recents = [
  Recent(
      image: "assets/images/buku2.jpg",
      title: "Dilan",
      percent: 75,
      page: "279 / 333 Halaman"),
  Recent(
      image: "assets/images/buku9.jpg",
      title: "Dasar Logika ....",
      percent: 5,
      page: "15 / 344 Halaman"),
];
