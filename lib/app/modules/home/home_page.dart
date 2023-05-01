import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_timer/app/modules/home/controller/home_controller.dart';

import 'package:job_timer/app/modules/home/widgets/header_projects_menu.dart';

class HomePage extends StatelessWidget {
  final HomeController controller;

  const HomePage({
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: SafeArea(
          child: ListTile(
            title: Text('Sair'),
          ),
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              title: Text('Projetos'),
              expandedHeight: 100,
              toolbarHeight: 100,
              centerTitle: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(15),
                ),
              ),
            ),
            SliverPersistentHeader(
              delegate: HeaderProjectsMenu(),
              pinned: true,
            ),
            BlocSelector<HomeController, HomeState, bool>(
              bloc: controller,
              selector: (state) => state.status == HomeStatus.loading,
              builder: (context, showLoading) => SliverVisibility(
                visible: showLoading,
                sliver: const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 50,
                    child: Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(height: 2000, color: Colors.blue),
                Container(height: 2000, color: Colors.blue),
                Container(height: 2000, color: Colors.blue),
                Container(height: 2000, color: Colors.blue),
                Container(
                  height: 2000,
                  color: Colors.blue,
                  child: const Text('chegou no fim'),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
