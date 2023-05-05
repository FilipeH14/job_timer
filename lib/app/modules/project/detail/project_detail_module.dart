import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_timer/app/modules/project/detail/project_detail_page.dart';
import 'package:modular_interfaces/src/route/route_context.dart';

class ProjectDetailModule extends Module {
  @override
  List<RouteContext> get modules => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const ProjectDetailPage()),
      ];
}
