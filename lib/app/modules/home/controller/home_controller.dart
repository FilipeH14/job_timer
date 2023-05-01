import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_timer/app/entities/project_status.dart';
import 'package:job_timer/app/services/projects/projects_service.dart';
import 'package:job_timer/app/view_models/project_model.dart';

part 'home_state.dart';

class HomeController extends Cubit<HomeState> {
  ProjectsService _projectsService;

  HomeController({required ProjectsService projectsService})
      : _projectsService = projectsService,
        super(HomeState.initial());

  Future<void> loadProjects() async {
    emit(state.copyWith(status: HomeStatus.loading));
  }
}
