import 'package:hive_flutter/hive_flutter.dart';

class CacheService{
  static const String appCache = "appCache";

  static Future<void> init() async {
    await Hive.initFlutter();

    await Hive.openBox(appCache);
  }

  static Box get _box => Hive.box(appCache);

  // Save
  static Future<void> saveData({required String key, required dynamic value}) async {
    await _box.put(key, value);
  }

  //lire
  static T? getData<T>(String key){
    return _box.get(key);
  }

  //Delete
  static Future<void>  deleteData(String key) async {
    await _box.delete(key);
  }

  //chek
  static bool containstData(String key){
    return _box.containsKey(key);
  }
}