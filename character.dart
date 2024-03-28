class Character {
  int _healthPoint = 0;

  
  int get healthPoint => _healthPoint;
  set healthPoint(int value) {
    _healthPoint = value < 0 ? -value : value;
  }
}
