import 'package:path/path.dart';
import 'package:restaurant/src/data/models/restaurant/restaurant_mod.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService {
  static final DatabaseService instance = DatabaseService._init();
  static Database? _database;
  DatabaseService._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('restaurants.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
    CREATE TABLE restaurants ( 
      id TEXT PRIMARY KEY NOT NULL, 
      name TEXT NOT NULL,
      description TEXT NOT NULL,
      pictureId TEXT NOT NULL,
      city TEXT NOT NULL,
      rating DOUBLE NOT NULL,
      timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
      )''');
  }

  Future<RestaurantMod> create(RestaurantMod restaurant) async {
    final db = await instance.database;
    await db.insert(restaurantTable, restaurant.toJson());
    return restaurant;
  }

  Future<RestaurantMod> getRestaurantById({required String id}) async {
    final db = await instance.database;

    final maps = await db.query(
      restaurantTable,
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return RestaurantMod.fromJson(maps.first);
    } else {
      return const RestaurantMod(
          id: "",
          name: "",
          description: "",
          pictureId: "",
          city: "",
          rating: 0);
    }
  }

  Future<List<RestaurantMod>> getAllRestaurant() async {
    final db = await instance.database;
    const orderBy = 'timestamp ASC';
    final result = await db.query(restaurantTable, orderBy: orderBy);

    return result.map((json) => RestaurantMod.fromJson(json)).toList();
  }

  Future<int> delete({required String id}) async {
    final db = await instance.database;

    return await db.delete(
      restaurantTable,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future close() async {
    final db = await instance.database;

    db.close();
  }
}
