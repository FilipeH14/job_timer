import 'package:job_timer/app/view_models/project_model.dart';

abstract class ProjectsService {
  Future<void> register(ProjectModel projectModel);
}
