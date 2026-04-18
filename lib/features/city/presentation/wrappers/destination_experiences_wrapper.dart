import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../di/di.dart';
import '../cubits/destination_experiences_cubit.dart';

class DestinationExperiencesWrapper extends StatelessWidget {
  final String destinationId;

  const DestinationExperiencesWrapper({super.key, required this.destinationId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DestinationExperiencesCubit>(
      create: (_) => getIt<DestinationExperiencesCubit>()..fetchExperiencesForDestination(destinationId),
      child: _ExperiencesContent(destinationId: destinationId),
    );
  }
}

class _ExperiencesContent extends StatelessWidget {
  final String destinationId;

  const _ExperiencesContent({required this.destinationId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DestinationExperiencesCubit, dynamic>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          loading: () => const SizedBox(),
          refreshing: (experiences) => _ExperiencesCarouselWidget(experiences: experiences),
          success: (experiences) => _ExperiencesCarouselWidget(experiences: experiences),
          error: (message) => SizedBox(),
        );
      },
    );
  }
}

class _ExperiencesCarouselWidget extends StatelessWidget {
  final dynamic experiences;

  const _ExperiencesCarouselWidget({required this.experiences});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(); // Placeholder
  }
}
