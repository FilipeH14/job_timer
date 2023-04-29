import 'package:isar/isar.dart';
import 'package:job_timer/app/core/database/database.dart';
import 'package:job_timer/app/entities/project.dart';
import 'package:job_timer/app/entities/project_task.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseImpl implements Database {
  Isar? _databaseInterface;

  @override
  Future<Isar> openConnection() async {
    if (_databaseInterface == null) {
      final dir = await getApplicationSupportDirectory();
      _databaseInterface = await Isar.open(
        [ProjectTaskSchema, ProjectSchema],
        directory: dir.path,
        inspector: true,
      );
    }

    return _databaseInterface!;
  }
}
