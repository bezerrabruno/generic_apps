import 'package:objectbox/objectbox.dart';

@Entity()
class UserEntity {
  int id = 0;
  String name;
  int money;
  int levelClick;

  UserEntity({
    required this.name,
    required this.money,
    required this.levelClick,
  });
}
