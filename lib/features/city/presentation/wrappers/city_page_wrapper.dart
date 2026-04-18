import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../di/di.dart';
import '../cubits/destination_detail_cubit.dart';
import '../cubits/destination_experiences_cubit.dart';
import '../pages/city_page.dart';

class CityPage extends StatelessWidget {
  final String destinationId;

  const CityPage({super.key, required this.destinationId});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DestinationDetailCubit>(
          create: (_) => getIt<DestinationDetailCubit>()..fetchDestination(destinationId),
        ),
        BlocProvider<DestinationExperiencesCubit>(
          create: (_) => getIt<DestinationExperiencesCubit>()..fetchExperiencesForDestination(destinationId),
        ),
      ],
      child: CityPageWidget(destinationId: destinationId),
    );
  }
}
