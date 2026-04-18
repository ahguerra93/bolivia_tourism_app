import 'package:bolivia_tourism_app/config/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../app_colors.dart';
import '../../../../app_text_styles.dart';
import '../../../../common/app_dimens.dart';
import '../../../activity/data/models/experience_model.dart';
import '../../data/models/destination_model.dart';
import '../cubits/destination_detail_cubit.dart';
import '../cubits/destination_detail_state.dart';
import '../cubits/destination_experiences_cubit.dart';
import '../cubits/destination_experiences_state.dart';

class CityPageWidget extends StatelessWidget {
  final String destinationId;

  const CityPageWidget({super.key, required this.destinationId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: BlocListener<DestinationDetailCubit, DestinationDetailState>(
        listener: (context, state) {
          state.whenOrNull(
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  action: SnackBarAction(
                    label: 'Retry',
                    onPressed: () => context.read<DestinationDetailCubit>().retryFetch(destinationId),
                  ),
                ),
              );
            },
          );
        },
        child: BlocBuilder<DestinationDetailCubit, DestinationDetailState>(
          builder: (context, state) {
            return state.when(
              initial: () => const _CityLoadingWidget(),
              loading: () => const _CityLoadingWidget(),
              refreshing: (destination) => _CityContentWidget(destination: destination, destinationId: destinationId),
              success: (destination) => _CityContentWidget(destination: destination, destinationId: destinationId),
              error: (message) => _CityErrorWidget(message: message),
            );
          },
        ),
      ),
    );
  }
}

class _CityLoadingWidget extends StatelessWidget {
  const _CityLoadingWidget();

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class _CityErrorWidget extends StatelessWidget {
  final String message;

  const _CityErrorWidget({required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 48, color: Colors.red),
          const SizedBox(height: 16),
          Text('Error loading destination', style: AppTextStyles.titleMedium),
          const SizedBox(height: 8),
          Text(message, textAlign: TextAlign.center, style: AppTextStyles.bodySmall),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () => context.read<DestinationDetailCubit>().retryFetch(
              context.widget is CityPageWidget ? (context.widget as CityPageWidget).destinationId : '',
            ),
            child: const Text('Try Again'),
          ),
        ],
      ),
    );
  }
}

class _CityContentWidget extends StatelessWidget {
  final DestinationModel destination;
  final String destinationId;

  const _CityContentWidget({required this.destination, required this.destinationId});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      children: [
        Stack(
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(destination.imageUrl), fit: BoxFit.cover),
                color: const Color(0xFF87CEEB),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).padding.top + AppDimens.spacingSmall,
              left: AppDimens.spacingMedium,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  decoration: BoxDecoration(color: context.colors.background, borderRadius: BorderRadius.circular(50)),
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
                      destination.name,
                      style: AppTextStyles.headlineLarge.copyWith(color: context.colors.textPrimary),
                    ),
                    const SizedBox(height: AppDimens.spacingXs),
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 16, color: context.colors.textSecondary),
                        const SizedBox(width: 4),
                        Text(
                          destination.country,
                          style: AppTextStyles.bodyMedium.copyWith(color: context.colors.textSecondary),
                        ),
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
                      destination.description,
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
                      destination.destinationDetailModel.description,
                      style: AppTextStyles.bodyMedium.copyWith(color: context.colors.textSecondary),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppDimens.spacingMedium),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingMedium),
                child: Text('Activities', style: AppTextStyles.titleMedium.copyWith(color: context.colors.textPrimary)),
              ),
              const SizedBox(height: AppDimens.spacingSmall),
              BlocBuilder<DestinationExperiencesCubit, DestinationExperiencesState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const SizedBox(height: 220, child: Center(child: CircularProgressIndicator())),
                    loading: () => const SizedBox(height: 220, child: Center(child: CircularProgressIndicator())),
                    refreshing: (experiences) => _ExperiencesCarouselWidget(experiences: experiences),
                    success: (experiences) => _ExperiencesCarouselWidget(experiences: experiences),
                    error: (message) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingMedium),
                      child: Text(
                        'Unable to load activities: $message',
                        style: AppTextStyles.bodySmall.copyWith(color: Colors.red),
                      ),
                    ),
                  );
                },
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
    );
  }
}

class _ExperiencesCarouselWidget extends StatelessWidget {
  final List<ExperienceModel> experiences;

  const _ExperiencesCarouselWidget({required this.experiences});

  @override
  Widget build(BuildContext context) {
    if (experiences.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingMedium),
        child: Text(
          'No activities available',
          style: AppTextStyles.bodyMedium.copyWith(color: context.colors.textSecondary),
        ),
      );
    }

    return SizedBox(
      height: 220,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingMedium),
        children: experiences
            .asMap()
            .entries
            .expand(
              (entry) => [
                _ActivityCarouselItem(
                  title: entry.value.name,
                  description: entry.value.description,
                  tag: entry.value.type.toString().split('.').last,
                  tagColor: const Color(0xFF00796B),
                  imageUrl: entry.value.imageUrl,
                  onTap: () => context.push('${AppRoutes.activity}/${entry.value.id}'),
                ),
                if (entry.key < experiences.length - 1) const SizedBox(width: AppDimens.spacingMedium),
              ],
            )
            .toList(),
      ),
    );
  }
}

class _ActivityCarouselItem extends StatelessWidget {
  final String title;
  final String description;
  final String tag;
  final Color tagColor;
  final String imageUrl;
  final void Function()? onTap;

  const _ActivityCarouselItem({
    required this.title,
    required this.description,
    required this.tag,
    required this.tagColor,
    required this.imageUrl,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 280,
        height: 220,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppDimens.radiusMedium),
          child: Stack(
            children: [
              // Background Image
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
                ),
              ),
              // Gradient Overlay
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black.withValues(alpha: 0.7)],
                  ),
                ),
              ),
              // Content
              Padding(
                padding: const EdgeInsets.all(AppDimens.spacingMedium),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Tag at the top
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(color: tagColor, borderRadius: BorderRadius.circular(4)),
                      child: Text(
                        tag,
                        style: AppTextStyles.labelSmall.copyWith(color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                    // Title and Description at the bottom
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: AppTextStyles.titleMedium.copyWith(color: Colors.white, fontWeight: FontWeight.w600),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          description,
                          style: AppTextStyles.bodySmall.copyWith(color: Colors.white70),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
