


class Overseer {

  // Generics
  Map<dynamic, dynamic> repository = {};
  // cart values

  Overseer() {
// register managers


  }

  static printWrapped(String text) {
    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) => print(match.group(0)));
  }


}
