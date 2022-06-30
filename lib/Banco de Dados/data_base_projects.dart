import 'package:home_page/Banco%20de%20Dados/register_projects.dart';
import 'package:home_page/Banco%20de%20Dados/registrerUsers.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseMyControl {
  Database? _dataBaseMyControl;

  get database async {
    if (_dataBaseMyControl != null) {
      return _dataBaseMyControl;
    } else {
      _dataBaseMyControl = await initDataBaseProjects();
      return _dataBaseMyControl;
    }
  }

  initDataBaseProjects() async {
    final databasePath = await getDatabasesPath();
    final fullDatabasePath = join(databasePath, 'mycontrol.db');
    var db = await openDatabase(
      fullDatabasePath,
      version: 1,
      onCreate: (db, version) => onCreateDBProjects(db, version),
      onUpgrade: (db, oldVersion, newVersion) =>
          onUpgradeDBProjects(db, oldVersion, newVersion),
    );
    return db;
  }

  onCreateDBProjects(Database db, int version) async {
    await db.execute("CREATE TABLE projects("
        "id INTEGER PRIMARY KEY,"
        "projectName VARCHAR,"
        "projectPassword VARCHAR,"
        "name VARCHAR,"
        "email VARCHAR,"
        "password VARCHAR"
        ")");
  }

  onUpgradeDBProjects(Database db, int oldVersion, int newVersion) async {
    if (oldVersion < newVersion) {}
  }

  Future<int> saveProjects(RegisterProjects registerProjects) async {
    Database db = await database;
    return db.insert('projects', registerProjects.toJson());
  }

  Future<List<RegisterProjects>> findAllProjects() async {
    Database db = await database;
    List select = await db.query('projects');
    List<RegisterProjects> register = select.isNotEmpty
        ? select.map((e) => RegisterProjects.fromJson(e)).toList()
        : [];
    print("$register");
    return register;
  }

  Future<List<RegisterProjects>> searchAllProjects(
      String projectName, String projectPassword) async {
    Database db = await database;
    List select = await db.query('projects',
        columns: ["projectName", "projectPassword"],
        where: "projectName = ? AND projectPassword = ?",
        whereArgs: [projectName, projectPassword]);
    print(select);
    List<RegisterProjects> register = select.isNotEmpty
        ? select.map((e) => RegisterProjects.fromJson(e)).toList()
        : [];
    print("$register");
    return register;
  }

  Future<int> save(RegisterUsers register) async {
    Database db = await database;
    return db.insert('projects', register.toJson());
  }

  Future<List<RegisterUsers>> findAll() async {
    Database db = await database;
    List select = await db.query('projects');
    List<RegisterUsers> register = select.isNotEmpty
        ? select.map((e) => RegisterUsers.fromJson(e)).toList()
        : [];
    print("$register");
    return register;
  }

  Future<List<RegisterUsers>> searchAll(String email, String password) async {
    Database db = await database;
    List select = await db.query('projects',
        columns: ["email", "password"],
        where: "email = ? AND password = ?",
        whereArgs: [email, password]);
    print(select);
    List<RegisterUsers> register = select.isNotEmpty
        ? select.map((e) => RegisterUsers.fromJson(e)).toList()
        : [];
    print("$register");
    return register;
  }
}
