// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TreeImpl _$$TreeImplFromJson(Map<String, dynamic> json) => _$TreeImpl(
  tree:
      (json['tree'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$TreeImplToJson(_$TreeImpl instance) =>
    <String, dynamic>{'tree': instance.tree};
