import 'package:get_storage/get_storage.dart';

class EcommerceLocalStorage {
  static final EcommerceLocalStorage _instance = EcommerceLocalStorage._instance;
  
  factory EcommerceLocalStorage() {
    return _instance;
  }
  
  EcommerceLocalStorage._internal();
  
  final _storage = GetStorage();
  
  // Generic method to save data.
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }
  
  // Generic method to read data.
  T? readData<T>(String key) {
    return _storage.read(key);
  }
  
  // Generic method to remove data.
  Future<void> removeData<T>(String key) async {
    await _storage.remove(key);
  }

  // Clear all data in storage.
  Future<void> clearAll<T>() async {
    await _storage.erase();
  }
}