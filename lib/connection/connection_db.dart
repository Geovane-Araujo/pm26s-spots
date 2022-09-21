import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class ConnectionDb{

 onCreateDatabase() async {
   WidgetsFlutterBinding.ensureInitialized();
   final database = openDatabase(
     join(await getDatabasesPath(), 'doggie_database.db'),
     // When the database is first created, create a table to store dogs.
     onCreate: (db, version) {
       // Run the CREATE TABLE statement on the database.
       return db.execute(
         'CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
       );
     },
     version: 1,
   );
 }
}