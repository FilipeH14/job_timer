import 'package:job_timer/app/entities/project.dart';
import 'package:job_timer/app/entities/project_status.dart';
import 'package:job_timer/app/entities/project_task.dart';
import 'package:job_timer/app/repositories/projects/projects_repository.dart';
import 'package:job_timer/app/view_models/project_model.dart';
import 'package:job_timer/app/view_models/project_task_model.dart';

import './projects_service.dart';

class ProjectsServiceImpl implements ProjectsService {
  final ProjectsRepository _projectsRepository;

  ProjectsServiceImpl({required ProjectsRepository projectsRepository})
      : _projectsRepository = projectsRepository;

  @override
  Future<void> register(ProjectModel projectModel) async {
    final project = Project()
      ..id = projectModel.id
      ..name = projectModel.name
      ..status = projectModel.status
      ..estimate = projectModel.estimate;

    await _projectsRepository.register(project);
  }

  @override
  Future<List<ProjectModel>> findByStatus(ProjectStatus status) async {
    final projects = await _projectsRepository.findByStatus(status);

    return projects.map((e) => ProjectModel.fromEntity(e)).toList();
  }

  @override
  Future<ProjectModel> addTask(int projectId, ProjectTaskModel task) async {
    final projectTask = ProjectTask()
      ..name = task.name
      ..duration = task.duration;

    final project = await _projectsRepository.addTask(projectId, projectTask);

    return ProjectModel.fromEntity(project);
  }

  @override
  Future<ProjectModel> findById(int projectId) async {
    final project = await _projectsRepository.findById(projectId);

    return ProjectModel.fromEntity(project);
  }

  @override
  Future<void> finish(int projectId) => _projectsRepository.finish(projectId);
}
