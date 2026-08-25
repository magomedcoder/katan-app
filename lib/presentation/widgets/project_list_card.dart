import 'package:flutter/material.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/domain/entities/project.dart';

class ProjectListCard extends StatelessWidget {
  const ProjectListCard({
    super.key,
    required this.project,
    required this.onTap,
  });

  final ProjectSummary project;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final title = project.title.isEmpty ? 'Без названия' : project.title;
    final meta = [
      '${project.tasksCount} задач',
      if (project.owner != null) project.owner!.displayName,
    ].join(' · ');

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      elevation: 0,
      color: theme.colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: theme.colorScheme.outlineVariant),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: project.isClosed
                    ? AppColors.fill
                    : const Color(0xFFECF5FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  project.isClosed ? Icons.folder_off_outlined : Icons.folder_outlined,
                  color: project.isClosed ? AppColors.textSecondary : AppColors.primary,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            style: theme.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        if (project.isClosed)
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                              color: AppColors.fill,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              'Закрыт',
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: AppColors.textSecondary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                      ],
                    ),
                    if (project.description.isNotEmpty) ...[
                      const SizedBox(height: 4),
                      Text(
                        project.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: AppColors.textRegular,
                        ),
                      ),
                    ],
                    const SizedBox(height: 6),
                    Text(
                      meta,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 4),
              Icon(
                Icons.chevron_right,
                color: theme.colorScheme.outline,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
