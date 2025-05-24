import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yunu_lk_flutter/providers/repository_provider.dart';
import 'package:yunu_lk_flutter/viewmodels/vendor/vendor_list_controller.dart';

part 'vendor_provider.g.dart';

@riverpod
VendorListController vendorListController(Ref ref) {
  final repository = ref.watch(repositoriesProvider).vendorRepository;
  final controller = VendorListController(vendorRepository: repository);
  ref.onDispose(() {
    controller.dispose();
  });

  return controller;
}
