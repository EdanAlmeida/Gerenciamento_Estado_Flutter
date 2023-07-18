
import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {

  @observable
  int count = 0;

  @action
  void increment(){
    count ++;
  }

}

/*GERADOR DE CÓDIGO COMMANDO
*
* flutter packages pub run build_runner build
* flutter packages pub run build_runner watch
*
* */

/*OLD VERSION
* import 'package:mobx/mobx.dart';

class Counter {

  Counter() {
      increment = Action(_increment);
  }

  Observable _count = Observable(0);

  int get count => _count.value;

  Action? increment;

  void _increment(){
    _count.value ++;
  }

}
*
* */