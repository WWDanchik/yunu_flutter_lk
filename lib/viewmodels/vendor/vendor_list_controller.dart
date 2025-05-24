import 'package:yunu_lk_flutter/data/models/vendor/vendor.dart';
import 'package:yunu_lk_flutter/data/repositories/vendor_repository.dart';
import 'package:yunu_lk_flutter/viewmodels/paged/paged_list_controller.dart';

class VendorListController extends PagedListController<Vendor> {
  VendorListController({required VendorRepository vendorRepository})
    : super(
        fetchItems: (pageKey, pageSize) async {
          final response = await vendorRepository.list(
            page: pageKey,
            perPage: pageSize,
          );
          return response.list;
        },
        getId: (product) => product.id,
        enableSelection: true,
        pageSize: 10,
      );
}
