// Запросы к БД
abstract class DataBaseRequest{

  static const String tableRole = 'Role';
  static const String tableUsers = 'Users';
  static const String tableClient = 'Client';
  static const String tableSizeFurniture = 'SizeFurniture';
  static const String tableCharacteristics = 'Characteristics';
  static const String tableMaterial = 'Material';
  static const String tableColor = 'Color';
  static const String tableFurniture = 'Furniture';
  static const String tableOrder = 'Order';
  static const String tableFurnitureImage = 'FurnitureImage';

  static const List<String> tableList = [tableRole, tableUsers,tableClient,tableSizeFurniture,tableCharacteristics,tableMaterial,tableColor,tableFurniture,tableFurnitureImage,tableOrder];

  static const List<String> tableCreateList = [_createTableRole, _createTableUsers,_createTableClient,_createTableSizeFurniture,_createTableCharacteristics,_createTableMaterial,_createTableColor,_createTableFurniture,_createTableFurnitureImage,_createTableOrder];

  static const String _createTableRole =
      'CREATE TABLE "$tableRole" ("id"	INTEGER NOT NULL, "role"	TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT));';

  static const String _createTableUsers =

      'CREATE TABLE "$tableUsers" ("id"	INTEGER NOT NULL,"login"	TEXT NOT NULL UNIQUE,"password"	TEXT NOT NULL,"id_role"	INTEGER NOT NULL,PRIMARY KEY("id" AUTOINCREMENT),FOREIGN KEY("id_role") REFERENCES "Role"("id"));';

  static const String _createTableClient =

      'CREATE TABLE "$tableClient" ("id"	INTEGER NOT NULL, "lastName"	TEXT NOT NULL, "firstName"	TEXT NOT NULL, "middleName"	TEXT, "email"	TEXT NOT NULL UNIQUE, "id_users" INTEGER NOT NULL, PRIMARY KEY("id" AUTOINCREMENT),FOREIGN KEY("id_users") REFERENCES "Users"("id"));';

  static const String _createTableSizeFurniture = 
      'CREATE TABLE "$tableSizeFurniture" ("id"	INTEGER NOT NULL,"furnitureLength"	REAL NOT NULL,"furnitureWidth"	REAL NOT NULL,"furnitureHeight"	REAL NOT NULL,PRIMARY KEY("id" AUTOINCREMENT));';
  
  static const String _createTableCharacteristics = 
      'CREATE TABLE "$tableCharacteristics" ("id"	INTEGER NOT NULL,"characteristicsName"	TEXT NOT NULL,"weight"	REAL NOT NULL,"furnitureNumber"	INTEGER NOT NULL,"id_sizeFurniture"	INTEGER NOT NULL,PRIMARY KEY("id" AUTOINCREMENT));';

  static const String _createTableMaterial = 
      'CREATE TABLE "$tableMaterial" ("id"	INTEGER NOT NULL,"materialType"	TEXT NOT NULL,PRIMARY KEY("id" AUTOINCREMENT));';

  static const String _createTableColor = 
      'CREATE TABLE "$tableColor" ("id"	INTEGER NOT NULL,"colorName"	INTEGER NOT NULL,PRIMARY KEY("id" AUTOINCREMENT));';

  static const String _createTableFurniture =
      'CREATE TABLE "$tableFurniture" ("id"	INTEGER NOT NULL,"dateDeliver"	TEXT NOT NULL,"purchasePrice"	REAL NOT NULL,"id_characteristics"	INTEGER NOT NULL,"id_material"	INTEGER NOT NULL,"id_color"	INTEGER NOT NULL,FOREIGN KEY("id_characteristics") REFERENCES "Characteristics"("id"),FOREIGN KEY("id_material") REFERENCES "Material"("id"),FOREIGN KEY("id_color") REFERENCES "Color"("id"),PRIMARY KEY("id" AUTOINCREMENT));';

  static const String _createTableFurnitureImage =
      'CREATE TABLE "$tableFurnitureImage" ("id"	INTEGER NOT NULL,"imageSource"	TEXT NOT NULL,"id_furniture"	INTEGER NOT NULL,PRIMARY KEY("id" AUTOINCREMENT),FOREIGN KEY("id_furniture") REFERENCES "Furniture"("id"));';

  static const String _createTableOrder =
      'CREATE TABLE "$tableOrder" ("id"	INTEGER NOT NULL,"orderNumber"	INTEGER NOT NULL,"orderDate"	TEXT NOT NULL,"Count"	INTEGER NOT NULL,"Summary"	REAL NOT NULL,"id_Users"	INTEGER NOT NULL,"id_furniture"	INTEGER NOT NULL,FOREIGN KEY("id_Users") REFERENCES "Users"("id"),FOREIGN KEY("id_furniture") REFERENCES "Furniture"("id"),PRIMARY KEY("id" AUTOINCREMENT));';
  
  static String deleteTable(String table)=>'DROP TABLE $table';
}