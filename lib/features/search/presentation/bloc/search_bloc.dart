import 'package:assignment_project/features/search/data/models/search_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/datasources/remote_datasources.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final ApiRepositories _apiRepository;

  List<Result> items = [];

  SearchBloc({
    required ApiRepositories apiRepositories,
  })  : _apiRepository = apiRepositories,
        super(const SearchStateInitial()) {
    on<SearchEventSearch>(search);
    add(const SearchEventSearch(''));
    //  on<SearchEventLoadMore>(_loadMore);
  }

  void search(SearchEventSearch event, Emitter<SearchState> emit) async {
    emit(const SearchStateLoading());

    /// erpor ui te. ui te jan
    try {
      List<Result> result = await _apiRepository.searchRepos(event.slug);
      emit(SearchStateLoaded(result: result));
    } catch (e) {
      print(e.toString());
      emit(SearchStateError(e.toString(), 404));
    }
  }

  
}

// EventTransformer<Event> debounce<Event>() {
//   return (events, mapper) => events.debounce(kDuration).switchMap(mapper);
// }
