import 'package:bolivia_tourism_app/config/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../app_colors.dart';
import '../../../../app_text_styles.dart';
import '../../../../common/app_dimens.dart';

class CityPage extends StatelessWidget {
  const CityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(height: 180, color: const Color(0xFF6B8FD9)),
              Positioned(
                // top: AppDimens.spacingMedium,
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
                      Text('Paris', style: AppTextStyles.headlineLarge.copyWith(color: context.colors.textPrimary)),
                      const SizedBox(height: AppDimens.spacingXs),
                      Row(
                        children: [
                          Icon(Icons.location_on, size: 16, color: context.colors.textSecondary),
                          const SizedBox(width: 4),
                          Text('France', style: AppTextStyles.bodyMedium.copyWith(color: context.colors.textSecondary)),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimens.spacingMedium,
                    vertical: AppDimens.spacingSmall,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('About', style: AppTextStyles.titleMedium.copyWith(color: context.colors.textPrimary)),
                      const SizedBox(height: AppDimens.spacingSmall),
                      Text(
                        'The City of Light enchants visitors with its timeless beauty, world-class museums, and romantic atmosphere.',
                        style: AppTextStyles.bodyMedium.copyWith(color: context.colors.textSecondary),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppDimens.spacingMedium),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: AppDimens.spacingMedium),
                  padding: const EdgeInsets.all(AppDimens.spacingMedium),
                  decoration: BoxDecoration(
                    color: context.colors.surfaceSoft,
                    borderRadius: BorderRadius.circular(AppDimens.radiusMedium),
                    border: Border.all(color: context.colors.border),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.info_outline, color: context.colors.primary, size: 20),
                          const SizedBox(width: 8),
                          Text(
                            'Travel Guide',
                            style: AppTextStyles.titleMedium.copyWith(color: context.colors.textPrimary),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppDimens.spacingSmall),
                      Text(
                        'Paris is best explored on foot or by metro. Spring (April-June) and fall (September-November) offer the best weather. Don\'t miss the sunset from Sacré-Cœur and try authentic French pastries at local boulangeries.',
                        style: AppTextStyles.bodyMedium.copyWith(color: context.colors.textSecondary),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppDimens.spacingMedium),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingMedium),
                  child: Text(
                    'Activities (3)',
                    style: AppTextStyles.titleMedium.copyWith(color: context.colors.textPrimary),
                  ),
                ),
                const SizedBox(height: AppDimens.spacingSmall),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingMedium),
                  child: Column(
                    children: [
                      _ActivityItem(
                        title: 'Eiffel Tower',
                        description: 'Iconic iron lattice tower and symbol of Paris',
                        tag: 'Attraction',
                        tagColor: const Color(0xFFE53935),
                        onTap: () => context.push(AppRoutes.activity),
                      ),
                      const SizedBox(height: AppDimens.spacingSmall),
                      _ActivityItem(
                        title: 'Louvre Museum',
                        description: 'World\'s largest art museum',
                        tag: 'Museum',
                        tagColor: const Color(0xFF7C4DFF),
                      ),
                      const SizedBox(height: AppDimens.spacingSmall),
                      _ActivityItem(
                        title: 'Notre-Dame Cathedral',
                        description: 'Medieval Gothic cathedral',
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

class _ActivityItem extends StatelessWidget {
  final String title;
  final String description;
  final String tag;
  final Color tagColor;
  final void Function()? onTap;

  const _ActivityItem({
    required this.title,
    this.onTap,
    required this.description,
    required this.tag,
    required this.tagColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.spacingSmall),
      decoration: BoxDecoration(
        color: context.colors.surfaceSoft,
        borderRadius: BorderRadius.circular(AppDimens.radiusMedium),
        border: Border(left: BorderSide(color: tagColor, width: 4)),
      ),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(title, style: AppTextStyles.titleSmall.copyWith(color: context.colors.textPrimary)),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(color: tagColor.withOpacity(0.1), borderRadius: BorderRadius.circular(4)),
                  child: Text(
                    tag,
                    style: AppTextStyles.labelSmall.copyWith(color: tagColor, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(description, style: AppTextStyles.bodySmall.copyWith(color: context.colors.textSecondary)),
          ],
        ),
      ),
    );
  }
}
