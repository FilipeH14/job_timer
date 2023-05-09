import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_timer/app/services/projects/projects_service.dart';
import 'package:job_timer/app/view_models/project_model.dart';

part 'project_detail_state.dart';

class ProjectDetailController extends Cubit<ProjectDetailState> {
  final ProjectsService _projectsService;

  ProjectDetailController({required ProjectsService projectsService})
      : _projectsService = projectsService,
        super(const ProjectDetailState.initial());

  void setProject(ProjectModel projectModel) {
    emit(state.copyWith(
      projectModel: projectModel,
      status: ProjectDetailStatus.complete,
    ));
  }

  void updateProject() async {
    final project = await _projectsService.findById(state.projectModel!.id!);
    emit(state.copyWith(projectModel: project));
  }
}
