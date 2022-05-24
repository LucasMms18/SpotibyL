import 'package:home_page/Banco%20de%20Dados/registrerUsers.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class BaseData {
  Database? _database;

  get database async {
    if (_database != null) {
      return _database;
    } else {
      _database = await _initDatabase();
      return _database;
    }
  }

  _initDatabase() async {
    final databasePath = await getDatabasesPath();
    final fullDatabasePath = join(databasePath, "spotibyl.db");
    var db = await openDatabase(
      fullDatabasePath,
      version: 1,
      onCreate: (db, version) => _onCreateDB(db),
      onUpgrade: (db, oldVersion, newVersion) =>
          _onUpgradeDB(db, oldVersion, newVersion),
    );
    return db;
  }

  _onCreateDB(Database db) async {
    db.execute("CREATE TABLE register("
        "id INTEGER PRIMARY KEY, "
        "name VARCHAR, "
        "email VARCHAR, "
        "password VARCHAR)");
  }

  _onUpgradeDB(Database db, int oldVersion, int newVersion) async {
    if (oldVersion < newVersion) {
      //Script de atualização aqui
    }
  }

  Future<int> save(Register register) async {
    Database db = await database;
    return db.insert('register', register.toJson());
  }

  Future<List<Register>> findAll() async {
    Database db = await database;
    List select = await db.query('register');
    List<Register> register = select.isNotEmpty
        ? select.map((e) => Register.fromJson(e)).toList()
        : [];
    print("$register");
    return register;
  }

  Future<List<Register>> searchAll(String email, String password) async {
    Database db = await database;
    List select = await db.query('register',
        columns: ["email", "password"],
        where: "email =? AND password = ?",
        whereArgs: [email, password]);
    print(select);
    List<Register> register = select.isNotEmpty
        ? select.map((e) => Register.fromJson(e)).toList()
        : [];
    print("$register");
    return register;
  }
}
