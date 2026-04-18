import 'package:bolivia_tourism_app/config/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../app_colors.dart';
import '../../../../app_text_styles.dart';
import '../../../../common/app_dimens.dart';
import '../../../activity/data/models/experience_model.dart';
import '../../../city/data/models/destination_model.dart';
import '../cubits/home_cubit.dart';
import '../cubits/home_state.dart';

class HomePageWidget extends StatelessWidget {
  final List<DestinationModel> destinations;
  final List<ExperienceModel> experiences;

  const HomePageWidget({super.key, required this.destinations, required this.experiences});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: AppBar(
        backgroundColor: context.colors.surfaceSoft,
        centerTitle: false,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Opacity(
              opacity: 0.75,
              child: SvgPicture.network(
                'https://upload.wikimedia.org/wikipedia/commons/4/48/Flag_of_Bolivia.svg',
                height: 20,
              ),
            ),
            Icon(Icons.location_on_outlined, color: context.colors.primary, size: 26),
            Text(
              'Discover Bolivia',
              style: GoogleFonts.comfortaa(
                textStyle: AppTextStyles.titleLarge.copyWith(
                  color: context.colors.textPrimary,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: context.colors.textPrimary),
            onPressed: () {},
          ),
        ],
      ),
      body: BlocListener<HomeCubit, HomeState>(
        listener: (context, state) {
          state.whenOrNull(
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  action: SnackBarAction(label: 'Retry', onPressed: () => context.read<HomeCubit>().retryFetch()),
                ),
              );
            },
          );
        },
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return state.when(
              initial: () => const _HomeLoadingWidget(),
              loading: () => const _HomeLoadingWidget(),
              refreshing: (data) => _HomeContentWidget(
                destinations: data.destinations,
                experiences: data.experiences,
                isRefreshing: true,
              ),
              success: (data) => _HomeContentWidget(
                destinations: data.destinations,
                experiences: data.experiences,
                isRefreshing: false,
              ),
              error: (message) => _HomeErrorWidget(message: message),
            );
          },
        ),
      ),
    );
  }
}

class _HomeLoadingWidget extends StatelessWidget {
  const _HomeLoadingWidget();

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class _HomeErrorWidget extends StatelessWidget {
  final String message;

  const _HomeErrorWidget({required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 48, color: Colors.red),
          const SizedBox(height: 16),
          Text('Error loading data', style: AppTextStyles.titleMedium),
          const SizedBox(height: 8),
          Text(message, textAlign: TextAlign.center, style: AppTextStyles.bodySmall),
          const SizedBox(height: 24),
          ElevatedButton(onPressed: () => context.read<HomeCubit>().retryFetch(), child: const Text('Try Again')),
        ],
      ),
    );
  }
}

class _HomeContentWidget extends StatelessWidget {
  final List<DestinationModel> destinations;
  final List<ExperienceModel> experiences;
  final bool isRefreshing;

  const _HomeContentWidget({required this.destinations, required this.experiences, required this.isRefreshing});
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => context.read<HomeCubit>().refreshHomeData(),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Search Bar Section
          Container(
            padding: const EdgeInsets.only(
              left: AppDimens.spacingMedium,
              right: AppDimens.spacingMedium,
              bottom: AppDimens.spacingMedium,
            ),
            color: context.colors.textOnPrimary,
            child: SafeArea(
              top: true,
              bottom: false,
              right: false,
              left: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: AppDimens.spacingMedium),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search cities or destinations...',
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
                  const SizedBox(height: AppDimens.spacingMedium),
                ],
              ),
            ),
          ),
          const SizedBox(height: AppDimens.spacingMedium),
          // Experiences Section
          if (experiences.isNotEmpty) ...[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingMedium),
              child: Text(
                'Experiences you can\'t miss',
                style: AppTextStyles.titleLarge.copyWith(color: context.colors.textPrimary),
              ),
            ),
            const SizedBox(height: AppDimens.spacingMedium),
            SizedBox(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingMedium),
                children: experiences
                    .asMap()
                    .entries
                    .expand(
                      (entry) => [
                        _ExperienceCarouselItem(
                          title: entry.value.name,
                          description: entry.value.description,
                          tag: entry.value.type.toString().split('.').last,
                          tagColor: const Color(0xFF00796B),
                          onTap: () => context.push('${AppRoutes.activity}/${entry.value.id}'),
                          imageUrl: entry.value.imageUrl,
                        ),
                        if (entry.key < experiences.length - 1) const SizedBox(width: AppDimens.spacingMedium),
                      ],
                    )
                    .toList(),
              ),
            ),
            const SizedBox(height: AppDimens.spacingLarge),
          ],
          // Destinations Section
          if (destinations.isNotEmpty) ...[
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.spacingMedium,
                vertical: AppDimens.spacingMedium,
              ),
              child: Text('Destinations', style: AppTextStyles.titleLarge.copyWith(color: context.colors.textPrimary)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingMedium),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: AppDimens.spacingLarge,
                crossAxisSpacing: AppDimens.spacingLarge,
                childAspectRatio: 0.9,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: destinations
                    .map(
                      (destination) => _DestinationGridItem(
                        title: destination.name,
                        imageUrl: destination.imageUrl,
                        onTap: () => context.push('${AppRoutes.city}/${destination.id}'),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _ExperienceCarouselItem extends StatelessWidget {
  final String title;
  final String description;
  final String tag;
  final Color tagColor;
  final String imageUrl;
  final void Function()? onTap;

  const _ExperienceCarouselItem({
    required this.title,
    required this.description,
    required this.tag,
    required this.tagColor,
    required this.imageUrl,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                child: Container(
                  width: double.maxFinite,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DestinationGridItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final void Function()? onTap;

  const _DestinationGridItem({required this.title, required this.imageUrl, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
            // Content - Centered Title
            Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: AppTextStyles.titleMedium.copyWith(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
