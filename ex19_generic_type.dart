class SecureBox<T> {
  final T _data;
  final String _pin;

  SecureBox(this._data, this._pin);

  T? getData(String pin) => (pin == _pin) ? _data : null;
}

class Person {
  final String name;
  Person(this.name);
}

void main(List<String> args) {
  var boxString = SecureBox<String>('Hello', '123');
  print(boxString.getData('321'));
  print(boxString.getData('123'));
  
  var boxInt = SecureBox<int>(1000, '123');
  print(boxInt.getData('123'));
  
  var boxDateTime = SecureBox<DateTime>(DateTime.now(), '123');
  print(boxDateTime.getData('123'));
  
  var bayu = SecureBox<Person>(Person('Bayu'), '123');
  print(bayu.getData('123')?.name); // Gunakan "?." untuk menangani nilai null yang mungkin
}
