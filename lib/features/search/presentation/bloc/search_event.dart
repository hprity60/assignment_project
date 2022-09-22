part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object> get props => [];
}

class SearchEventSearch extends SearchEvent {
  final String slug;
  const SearchEventSearch(
      this.slug);

  @override
  List<Object> get props => [slug];
}

class SearchEventLoadMore extends SearchEvent {
  const SearchEventLoadMore();
}
