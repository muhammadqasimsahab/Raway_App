import '../App_View/Home_Screen/HomeManager.dart';

class Overseer {
  // Generics
  Map<dynamic, dynamic> repository = {};
  // cart values

  Overseer() {
// register managers
    register(HomeManager, HomeManager());
  }

  static printWrapped(String text) {
    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) => print(match.group(0)));
  }

  // register the manager to this overseer to store in repository
  register(name, object) {
    repository[name] = object;
  }

  // get the required manager from overseer when needed
  fetch(name) {
    return repository[name];
  }
}
