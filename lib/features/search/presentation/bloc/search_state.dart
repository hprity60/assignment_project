part of 'search_bloc.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}
//assa bad den ami onno vabe korci. apni ui te jan

class SearchStateInitial extends SearchState {
  const SearchStateInitial();
}

class SearchStateLoading extends SearchState {
  const SearchStateLoading();
}

class SearchStateLoadMore extends SearchState {
  const SearchStateLoadMore();
}

class SearchStateError extends SearchState {
  final String message;
  final int statusCode;

  const SearchStateError(this.message, this.statusCode);
  @override
  List<Object> get props => [message, statusCode];
}

class SearchStateMoreError extends SearchState {
  final String message;
  final int statusCode;

  const SearchStateMoreError(this.message, this.statusCode);
  @override
  List<Object> get props => [message, statusCode];
}

class SearchStateLoaded extends SearchState {
  final List<Result> result;
  const SearchStateLoaded({required this.result});
 /// acca apni check koren
  @override
  List<Object> get props => [result];
}

class SearchStateMoreLoaded extends SearchState {
  final List<Result> result;
  const SearchStateMoreLoaded(this.result);

  @override
  List<Object> get props => [result];
}
