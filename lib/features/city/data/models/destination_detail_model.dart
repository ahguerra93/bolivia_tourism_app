import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/models/contact_link_model.dart';

part 'destination_detail_model.freezed.dart';
part 'destination_detail_model.g.dart';

@freezed
abstract class DestinationDetailModel with _$DestinationDetailModel {
  const factory DestinationDetailModel({required String description, required List<ContactLinkModel> bookingLinks}) =
      _DestinationDetailModel;

  factory DestinationDetailModel.fromJson(Map<String, dynamic> json) => _$DestinationDetailModelFromJson(json);
}
