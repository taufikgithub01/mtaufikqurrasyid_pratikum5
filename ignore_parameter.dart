class Mahasiswa {
  String name;
  Function(String) doingHobby;

  // Constructor
  Mahasiswa(this.name, {required this.doingHobby});
  
  // Method untuk istirahat
  void takeARest() {
    if (doingHobby != null) {
      doingHobby(name);
    } else {
      print('$name sedang istirahat.');
    }
  }
}
