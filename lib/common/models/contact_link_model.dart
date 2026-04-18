import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_link_model.freezed.dart';
part 'contact_link_model.g.dart';

@freezed
abstract class ContactLinkModel with _$ContactLinkModel {
  const factory ContactLinkModel({
    required String id,
    required String name,
    required String type,
    String? number,
    String? email,
  }) = _ContactLinkModel;

  factory ContactLinkModel.fromJson(Map<String, dynamic> json) => _$ContactLinkModelFromJson(json);
}
