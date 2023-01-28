import 'package:click_click/app/data/object_box.dart';
import 'package:click_click/app/data/objectbox.g.dart';
import 'package:click_click/app/domain/entities/user_entity.dart';

/// Boxes com prefixo kv são 'chaves valor'
class Boxes {
  late final ObjectBox objectBox;
  Store? store;

  Boxes(this.objectBox);

  ///Inicia os boxes q antes eram chave valor
  Future<void> kvInit() async {
    final store = await objectBox.getStore();
    final user = store.box<UserEntity>();

    if (user.getAll().isEmpty) {
      user.put(
        UserEntity(name: 'User', money: 0, levelClick: 0),
      );
    }
  }

  /// Limpa todos os Boxes kv
  Future<void> kvClear() async {
    final store = await objectBox.getStore();
    final login = store.box<UserEntity>();

    login.remove(1);
  }

  Future<Box<UserEntity>> kvUser() async {
    final store = await objectBox.getStore();

    return store.box<UserEntity>();
  }
}
