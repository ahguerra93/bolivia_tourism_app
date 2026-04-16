import 'package:flutter/material.dart';
import '../../../../app_colors.dart';
import '../../../../app_text_styles.dart';
import '../../../../common/app_dimens.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              Container(height: 180, color: const Color(0xFFE8B4B8)),
              Positioned(
                top: MediaQuery.of(context).padding.top,
                left: AppDimens.spacingMedium,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
                    padding: const EdgeInsets.all(8),
                    child: Icon(Icons.arrow_back, color: context.colors.textPrimary),
                  ),
                ),
              ),
            ],
          ),
          Container(
            color: context.colors.background,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(AppDimens.spacingMedium),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Activities',
                        style: AppTextStyles.headlineMedium.copyWith(color: context.colors.textPrimary),
                      ),
                      const SizedBox(height: AppDimens.spacingSmall),
                      Text(
                        '5 amazing experiences',
                        style: AppTextStyles.bodyMedium.copyWith(color: context.colors.textSecondary),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingMedium),
                  child: Column(
                    children: [
                      _ActivityListItem(
                        title: 'Eiffel Tower',
                        description: 'Iconic iron lattice tower and symbol of Paris',
                        icon: Icons.location_city,
                        tag: 'Attraction',
                        tagColor: const Color(0xFFE53935),
                      ),
                      const SizedBox(height: AppDimens.spacingMedium),
                      _ActivityListItem(
                        title: 'Louvre Museum',
                        description: 'World\'s largest art museum',
                        icon: Icons.museum,
                        tag: 'Museum',
                        tagColor: const Color(0xFF7C4DFF),
                      ),
                      const SizedBox(height: AppDimens.spacingMedium),
                      _ActivityListItem(
                        title: 'Champs-Élysées',
                        description: 'Famous avenue for shopping and dining',
                        icon: Icons.shopping_bag,
                        tag: 'Shopping',
                        tagColor: const Color(0xFF00796B),
                      ),
                      const SizedBox(height: AppDimens.spacingMedium),
                      _ActivityListItem(
                        title: 'Le Marais District',
                        description: 'Historic district with trendy restaurants',
                        icon: Icons.restaurant,
                        tag: 'Restaurant',
                        tagColor: const Color(0xFFD32F2F),
                      ),
                      const SizedBox(height: AppDimens.spacingMedium),
                      _ActivityListItem(
                        title: 'Sainte-Chapelle',
                        description: 'Stunning Gothic chapel with stained glass',
                        icon: Icons.church,
                        tag: 'Attraction',
                        tagColor: const Color(0xFFE53935),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppDimens.spacingMedium),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingMedium),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Activities Map',
                        style: AppTextStyles.titleMedium.copyWith(color: context.colors.textPrimary),
                      ),
                      const SizedBox(height: AppDimens.spacingSmall),
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: context.colors.surfaceSoft,
                          borderRadius: BorderRadius.circular(AppDimens.radiusMedium),
                          border: Border.all(color: context.colors.border),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.map_outlined, size: 48, color: context.colors.primary),
                              const SizedBox(height: AppDimens.spacingSmall),
                              Text(
                                'Map Placeholder',
                                style: AppTextStyles.bodyMedium.copyWith(color: context.colors.textSecondary),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppDimens.spacingLarge),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ActivityListItem extends StatefulWidget {
  final String title;
  final String description;
  final IconData icon;
  final String tag;
  final Color tagColor;

  const _ActivityListItem({
    required this.title,
    required this.description,
    required this.icon,
    required this.tag,
    required this.tagColor,
  });

  @override
  State<_ActivityListItem> createState() => _ActivityListItemState();
}

class _ActivityListItemState extends State<_ActivityListItem> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.spacingMedium),
      decoration: BoxDecoration(
        color: context.colors.surfaceSoft,
        borderRadius: BorderRadius.circular(AppDimens.radiusMedium),
        border: Border.all(color: context.colors.border),
      ),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(AppDimens.spacingSmall),
              decoration: BoxDecoration(
                color: widget.tagColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(AppDimens.radiusSmall),
              ),
              child: Icon(widget.icon, color: widget.tagColor, size: AppDimens.iconMedium),
            ),
            const SizedBox(width: AppDimens.spacingMedium),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          widget.title,
                          style: AppTextStyles.titleSmall.copyWith(color: context.colors.textPrimary),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: widget.tagColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          widget.tag,
                          style: AppTextStyles.labelSmall.copyWith(color: widget.tagColor, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    widget.description,
                    style: AppTextStyles.bodySmall.copyWith(color: context.colors.textSecondary),
                  ),
                ],
              ),
            ),
            const SizedBox(width: AppDimens.spacingSmall),
            GestureDetector(
              onTap: () => setState(() => isFavorited = !isFavorited),
              child: Icon(
                isFavorited ? Icons.favorite : Icons.favorite_border,
                color: isFavorited ? Colors.red : context.colors.primary,
                size: AppDimens.iconMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
