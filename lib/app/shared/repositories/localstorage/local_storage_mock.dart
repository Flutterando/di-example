import 'local_storage_interface.dart';

class LocalStorageMock implements ILocalStorage {
  List<String> storage = [];

  @override
  Future delete(String key) {
    return null;
  }

  @override
  Future<List<String>> get(String key) async {
    return storage;
  }

  @override
  Future put(String key, List<String> value) async {
    storage = value;
  }
}
