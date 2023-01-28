import 'package:click_click/app/data/boxes/boxes.dart';
import 'package:click_click/app/module/home/stores/home_store.dart';

class HomeController {
  final HomeStore store;
  final Boxes boxes;

  HomeController(this.store, this.boxes) {
    getUser();
  }

  Future<void> getUser() async {
    await boxes.kvInit();

    final box = await boxes.kvUser();
    final user = box.get(1)!;

    store.user = user;
    store.money = user.money;
  }

  Future<void> click() async {
    final box = await boxes.kvUser();

    if (store.user.levelClick == 0) {
      store.money = store.money + 1;
    } else {
      store.money = store.money + (store.user.levelClick * 2);
    }

    store.user.money = store.money;

    box.put(store.user);
  }
}
