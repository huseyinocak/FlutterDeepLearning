class Staticcount {
  static bool isFavorited = true;
  static int favoriteCount = 41;

  static void toogleFavorite() {
    if (isFavorited) {
      favoriteCount -= 1;
      isFavorited = false;
    } else {
      favoriteCount += 1;
      isFavorited = true;
    }
    print(favoriteCount);
    print(isFavorited);
  }
}
