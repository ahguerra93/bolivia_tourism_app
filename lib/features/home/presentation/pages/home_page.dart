import 'package:bolivia_tourism_app/config/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../app_colors.dart';
import '../../../../app_text_styles.dart';
import '../../../../common/app_dimens.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.textOnPrimary,
      body: Column(
        children: [
          // Search Bar Section with Scaffold Background
          Container(
            padding: const EdgeInsets.only(
              left: AppDimens.spacingMedium,
              right: AppDimens.spacingMedium,
              bottom: AppDimens.spacingMedium,
            ),
            child: SafeArea(
              top: true,
              bottom: false,
              right: false,
              left: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: AppDimens.spacingMedium),
                    child: Text(
                      'Discover Bolivia',
                      style: AppTextStyles.headlineLarge.copyWith(color: context.colors.textPrimary),
                    ),
                  ),
                  const SizedBox(height: AppDimens.spacingMedium),
                  // Search Bar
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search cities or countries...',
                      prefixIcon: const Icon(Icons.search),
                      filled: true,
                      fillColor: context.colors.surfaceSoft,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppDimens.radiusSmall),
                        borderSide: BorderSide(color: context.colors.border),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppDimens.radiusSmall),
                        borderSide: BorderSide(color: context.colors.border),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Cities Cards Section
          Expanded(
            child: Container(
              color: context.colors.background,
              child: ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDimens.spacingMedium,
                  vertical: AppDimens.spacingLarge,
                ),
                children: [
                  _CityCard(
                    title: 'Paris',
                    country: 'France',
                    description:
                        'The City of Light enchants visitors with its timeless beauty, world-class museums, and romantic...',
                    color: const Color(0xFF6B8FD9),
                    onTap: () {
                      context.push(AppRoutes.city);
                    },
                  ),
                  const SizedBox(height: AppDimens.spacingMedium),
                  _CityCard(
                    title: 'Tokyo',
                    country: 'Japan',
                    description:
                        'A dazzling metropolis where ancient temples meet neon-lit skyscrapers, offering endless exploration...',
                    color: const Color(0xFF87CEEB),
                  ),
                  const SizedBox(height: AppDimens.spacingMedium),
                  _CityCard(
                    title: 'Barcelona',
                    country: 'Spain',
                    description:
                        'A vibrant coastal city blending Gothic architecture with modernist masterpieces and Mediterranean charm...',
                    color: const Color(0xFFE8B4B8),
                  ),
                  const SizedBox(height: AppDimens.spacingMedium),
                  _CityCard(
                    title: 'Rome',
                    country: 'Italy',
                    description:
                        'The Eternal City brings ancient history to life with iconic monuments, museums, and authentic Italian culture...',
                    color: const Color(0xFFD4A574),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CityCard extends StatelessWidget {
  final String title;
  final String country;
  final String description;
  final Color color;
  final void Function()? onTap;

  const _CityCard({
    required this.title,
    this.onTap,
    required this.country,
    required this.description,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimens.radiusLarge),
          color: color,
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 8, offset: const Offset(0, 4))],
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(AppDimens.radiusLarge), color: color),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(AppDimens.radiusLarge),
                    bottomRight: Radius.circular(AppDimens.radiusLarge),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                  ),
                ),
                padding: const EdgeInsets.all(AppDimens.spacingMedium),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.titleLarge.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: AppDimens.spacingXs),
                    Row(
                      children: [
                        const Icon(Icons.location_on, color: Colors.white, size: 14),
                        const SizedBox(width: 4),
                        Text(country, style: AppTextStyles.bodySmall.copyWith(color: Colors.white)),
                      ],
                    ),
                    const SizedBox(height: AppDimens.spacingSmall),
                    Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.bodySmall.copyWith(color: Colors.white70),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
