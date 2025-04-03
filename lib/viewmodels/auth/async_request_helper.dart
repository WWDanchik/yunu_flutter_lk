import 'package:riverpod/riverpod.dart';

import '../../data/models/api_response.dart';

mixin AsyncRequestHelper<T> on AsyncNotifier<ApiResponse<T>> {
  Future<ApiResponse<T>> performRequest(
    Future<ApiResponse<T>> Function() request,
  ) async {
    state = const AsyncValue.loading();
    final asyncResponse = await AsyncValue.guard<ApiResponse<T>>(request);
    state = asyncResponse;
    if (asyncResponse.hasError) {
      return ApiResponse.error(
        errors: [ApiError(message: asyncResponse.error.toString())],
      );
    }
    return asyncResponse.value!;
  }
}
