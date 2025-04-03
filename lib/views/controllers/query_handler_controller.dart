import 'package:flutter/material.dart';
import 'package:yunu_lk_flutter/data/models/api_response.dart';

enum QueryStatus { idle, loading, success, error }

class QueryHandlerController<T, A, B> extends ChangeNotifier {
  final Future<T> Function(A, B) request;

  QueryStatus status = QueryStatus.idle;
  T? data;
  Object? error;

  QueryHandlerController({required this.request});

  bool get isLoading => status == QueryStatus.loading;
  bool get isSuccess => status == QueryStatus.success;
  bool get isError => status == QueryStatus.error;

  Future<T> trigger(A a, B b) async {
    status = QueryStatus.loading;
    data = null;
    error = null;
    notifyListeners();

    try {
      final result = await request(a, b);

      if (result is ApiResponse) {
        result.when(
          ok: (apiStatus, res) {
            data = result;
            this.status = QueryStatus.success;
          },
          error: (apiStatus, errors) {
            error = errors;
            this.status = QueryStatus.error;
          },
        );
      } else {
        data = result;
        status = QueryStatus.success;
      }
      notifyListeners();
      return result;
    } catch (e) {
      error = e;
      status = QueryStatus.error;
      notifyListeners();
      rethrow;
    }
  }

  void reset() {
    status = QueryStatus.idle;
    data = null;
    error = null;
    notifyListeners();
  }
}
