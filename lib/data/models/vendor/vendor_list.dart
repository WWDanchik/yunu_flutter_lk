import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yunu_lk_flutter/data/models/vendor/vendor.dart';

part 'vendor_list.freezed.dart';
part 'vendor_list.g.dart';

@freezed
class VendorList with _$VendorList {
  factory VendorList({required List<Vendor> list, required int total}) =
      _VendorList;

  factory VendorList.fromJson(Map<String, dynamic> json) =>
      _$VendorListFromJson(json);
}
