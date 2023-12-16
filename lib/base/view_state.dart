import '../helper/enums/status_enum.dart';
import 'failure.dart';

class ViewState<T> {
  late Status status;
  T? data;
  Failure? failure;

  ViewState.loading() : status = Status.loading;

  ViewState.completed({required this.data}) : status = Status.completed;

  ViewState.error({required this.failure}) : status = Status.error;

  ViewState.initial() : status = Status.initial;
}
