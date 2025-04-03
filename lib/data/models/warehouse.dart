import 'package:freezed_annotation/freezed_annotation.dart';
part 'warehouse.freezed.dart';
part 'warehouse.g.dart';

@freezed
class Warehouse with _$Warehouse {
  const factory Warehouse({required int id, required String name}) = _Warehouse;

  factory Warehouse.fromJson(Map<String, Object> json) =>
      _$WarehouseFromJson(json);
}
