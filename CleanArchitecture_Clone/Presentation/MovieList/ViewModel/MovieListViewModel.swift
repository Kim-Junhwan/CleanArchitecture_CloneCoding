//
//  MovieListViewModel.swift
//  CleanArchitecture_Clone
//
//  Created by JunHwan Kim on 2022/09/16.
//

import Foundation

struct MoviesListViewModelActions {
    let showMovieDetails: (Movie) -> Void
    let showMovieQueriesSuggestions: (@escaping (_ didSelect: MovieQuery) -> Void) -> Void
    let closeMovieQueriesSuggestions: () -> Void
}

enum MoviesListViewModelLoading {
    case fullScreen
    case nextPage
}

protocol MoviesListViewModelInput {
    func viewDidLoad()
    func didLoadNextPage()
    func didSearch(query: String)
    func didCancelSearch()
    func showQueriesSuggestions()
    func closeQueriesSuggestions()
    func didSelectItem(at index: Int)
}

protocol MoviesListViewModelOutput {
    var items: Observable<[MoviesListViewModel]> { get }
    var loading: Observable<MoviesListViewModelLoading?> { get }
    var query: Observable<String> { get }
    var error: Observable<String> { get }
    var isEmpty: Bool { get }
    var screenTitle: String { get }
    var emptyDataTitle: String { get }
    var errorTitle: String { get }
    var searchBarPlaceholder: String { get }
}

protocol MoviesListViewModel: MoviesListViewModelInput, MoviesListViewModelOutput {}

final class DefaultMoviesListViewModel: MoviesListViewModel {
    
    private let searchMoviesUseCase: SearchMoviesUseCase
    private let actions: MoviesListViewModelActions? = nil
    
    var currentPage: Int = 0
    var totalPageCount: Int = 1
    var hasMorePages: Bool { currentPage < totalPageCount }
    var nextPage: Int { hasMorePages ? currentPage+1 : currentPage }
    
    private var pages: [MoviesPage] = []
    private var moviesLoadTask: Cancellable? {
        willSet{
            moviesLoadTask?.cancel()
        }
    }
    
    //MARK: - OUTPUT
    var items: Observable<[MoviesListViewModel]> = Observable([])
    var loading: Observable<MoviesListViewModelLoading?> = Observable(.none)
    var query: Observable<String> = Observable("")
    var error: Observable<String> = Observable("")
    var isEmpty: Bool { return items.value.isEmpty }
    var screenTitle: String = "Movies"//NSLocalizedString("Movies", comment: "")
    var emptyDataTitle: String = "Search results"//NSLocalizedString("Search results", comment: "")
    var errorTitle: String = "Error"//NSLocalizedString("Error", comment: "")
    var searchBarPlaceholder: String = "Search Movies"//NSLocalizedString("Search Movies", comment: "")
}

extension DefaultMoviesListViewModel {
    
}
