import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_timer/app/entities/project_status.dart';

class HeaderProjectsMenu extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return LayoutBuilder(
        builder: (context, constraints) => Container(
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              height: constraints.maxHeight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: constraints.maxWidth * .5,
                    child: DropdownButtonFormField<ProjectStatus>(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        contentPadding: const EdgeInsets.all(10),
                        isCollapsed: true,
                      ),
                      items: ProjectStatus.values
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(e.label),
                              ))
                          .toList(),
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    width: constraints.maxWidth * .4,
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.add),
                      label: const Text('Novo Projeto'),
                      onPressed: () =>
                          Modular.to.pushNamed('/project/register'),
                    ),
                  ),
                ],
              ),
            ));
  }

  @override
  double get maxExtent => 80;

  @override
  double get minExtent => 80;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
