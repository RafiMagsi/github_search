import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utils/app_router.dart';
import '../data/git_model.dart';

class GitItemWidget extends StatelessWidget {
  const GitItemWidget({required this.repo, super.key});

  final GitRepository repo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Consumer(builder: (context, ref, widget) {
        return InkWell(
          onTap: () {
            // ref.context.pushNamed(Routes.repoDetails, extra: repo);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 22),
            decoration: BoxDecoration(color: Colors.lightBlue[100], borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ID: ${repo.id}'),
                    Text('Name: ${repo.name}'),
                    Text('Email: ${repo.htmlUrl}'),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
