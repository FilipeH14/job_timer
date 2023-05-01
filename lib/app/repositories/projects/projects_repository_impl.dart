import 'dart:developer';

import 'package:isar/isar.dart';
import 'package:job_timer/app/core/database/database.dart';
import 'package:job_timer/app/core/exeptions/failure.dart';
import 'package:job_timer/app/entities/project.dart';
import 'package:job_timer/app/repositories/projects/projects_repository.dart';

class ProjectsRepositoryImpl implements ProjectsRepository {
  final Database _database;

  ProjectsRepositoryImpl({required Database database}) : _database = database;

  @override
  Future<void> register(Project project) async {
    try {
      final connection = await _database.openConnection();

      await connection.writeTxn(() {
        return connection.projects.put(project);
      });
    } on IsarError catch (e, s) {
      log('Erro ao cadastrar projeto', error: e, stackTrace: s);
      throw Failure(message: 'Erro ao cadastrar projeto');
    }
  }
}