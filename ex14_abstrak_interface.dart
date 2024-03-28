import 'abstrak_interface/flying_monster.dart';
import 'abstrak_interface/monster.dart';
import 'abstrak_interface/monster_kecoa.dart';
import 'abstrak_interface/monster_ucoa.dart';
import 'abstrak_interface/monster_ubur_ubur.dart';

void main(List<String> args) {
  List<Monster> monsters = [];
  monsters.add(MonsterUburUbur());
  monsters.add(MonsterKecoa());
  monsters.add(MonsterUcoa());
  //monsters.add(Monster()); // Menambahkan objek Monster ke dalam list monsters akan 
  //menghasilkan error karena Monster adalah kelas abstrak

  for (Monster m in monsters) {
    if (m is FlyingMonster) {
      print((m as FlyingMonster).fly());
    }
  }
}
