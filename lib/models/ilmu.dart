class Ilmu {
  final String image, title, creator, rate, desk, hal, assets;

  Ilmu(
      {required this.image,
      required this.title,
      required this.creator,
      required this.rate,
      required this.desk,
      required this.hal,
      required this.assets});
}

List<Ilmu> buku = [
  Ilmu(
      image: "assets/images/buku9.jpg",
      title: "Dasar Logika Pemrograman Komputer",
      creator: "Abdul Kadir",
      rate: "3 ⭐",
      desk:
          "Buku yang sangat cocok untuk Anda yang sedang mempelajari dasar pemrograman komputer. Buku ini mengajarkan logika untuk menyelesaikan berbagai masalah yang ditangani oleh komputer dengan menggunakan Flowgorithm. Dengan menggunakan perangkat lunak ini, berbagai permasalahan komputasi dapat diselesaikan dengan menyusun diagram alir. Kemudian, Anda bisa mengujinya untuk memastikan bahwa solusi yang Anda buat memang sudah sesuai atau tidak, tanpa perlu melibatkan orang lain.",
      hal: "344 Halaman",
      assets: "assets/pdf/Dasar Logika Pemograman Komputer Abdul Karir.pdf"),
  Ilmu(
      image: "assets/images/buku7.jpg",
      title: "Flutter Succinctly",
      creator: "Freitas",
      rate: "4.1 ⭐",
      desk:
          "Flutter dan Dart adalah jalan pintas yang Anda butuhkan untuk membuat aplikasi Android selain memanfaatkan Java. Buku ini memberi pengantar ringkas bagaimana memahami framework Flutter dan bahasa pemrograman Dart dari sudut pandang programmer pemula.\n\n Tidak memandang apakah Anda pernah mempelajari bahasa pemrograman lainnya atau belum, buku ini cocok untuk dibaca sebab mengupas secara ringkas, singkat, dan tepat. Apabila Anda memiliki rencana untuk membuat aplikasi Android, mulailah selangkah lebih maju dengan membaca buku ini. Jadi tunggu apa lagi, ayo temukan kemudahan yang ditawarkan oleh bahasa pemrograman Dart.",
      hal: "129 Halaman",
      assets: "assets/pdf/fluttersuccinctly.pdf"),
  Ilmu(
      image: "assets/images/buku6.jpg",
      title: "Belajar Flutter Dari Nol",
      creator: "Malik Kurosaki",
      rate: "3.7 ⭐",
      desk:
          "Buku tentang flutter Indonesia level pemula sangat cocok bagi Anda yang ingin belajar langsung membangun aplikasi android dengan menggunakan android studio dari NOL.\n\nSebab pada buku ini Anda dipandu mulai dari proses pengenalan tools Android Studio dan bahasa pemprograman yang lebih mudah dipahami karena menggunakan bahasa pemprograman dart yang kini menjadi first class language (bahasa kelas utama) dalam pembuatan aplikasi android sejak diresmikan oleh Google I/O pada Mei 2018.\n\nPada buku ini Anda juga akan dipandu dalam proses instalasi tools JDK, Flutter dan lain-lainya serta langkah-langkah praktik membuat aplikasi diantaranya praktik membuat layout Instagram",
      hal: "72 Halaman",
      assets: "assets/pdf/Belajar Flutter Dari Nol.pdf"),
  Ilmu(
      image: "assets/images/buku8.jpg",
      title: "Web Programing",
      creator: "Ani, Ari, Sunarti",
      rate: "4 ⭐",
      desk:
          "Buku Pemrograman Web ini mengenalkan bagian dari sebuah pembentukan pemrograman web. Buku ini sebagian besar menyajikan langkah-langkah program yang disusun secara terstruktur. Dengan adanya langkah-langkah program tersebut, diharapkan pembaca dapat mempraktikkan secara langsung dan dapat menyimpulkan sendiri maksud dari setiap perintah dalam program dengan cara melihat hasil yang ditampilkan di web browser.\n\nBuku ini sangat cocok bagi pembaca pemula yang baru memulai dunia pemrograman secara mandiri karena langkah-langkah dalam buku ini disajikan sesederhana mungkin. Buku ini cocok digunakan sebagai bahan pembelajaran, baik di perguruan tinggi, sekolah maupun kursus-kursus",
      hal: "99 Halaman",
      assets: "assets/pdf/Web Programming.pdf"),
];
