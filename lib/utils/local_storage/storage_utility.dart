import 'package:get_storage/get_storage.dart';

class TLocalStorage {
  static final TLocalStorage _instance = new TLocalStorage._internal();

  factory TLocalStorage() {
    return _instance;
  }

  TLocalStorage._internal();

  final _storage = GetStorage();

  //generic method to save data

  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Generic method to Read data

  T? readData<T>(String key) {
    return _storage.read(key);
  }

  // Generic method to Remove data
  Future<void> romoveData<T>(String key) async {
    await _storage.remove(key);
  }

  // Clear  all data in the storage

  Future<void> clearAll() async {
    await _storage.erase();
  }
}
