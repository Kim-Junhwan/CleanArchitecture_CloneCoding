//
//  MoviesRepository.swift
//  CleanArchitecture_Clone
//
//  Created by JunHwan Kim on 2022/09/17.
//

import Foundation

protocol MoviesRepository {
    func fetchMoviesList(query: MovieQuery, page: Int, cached: @escaping (MoviesPage) -> Void, completion: @escaping (Result<MoviesPage, Error>) -> Void) -> Cancellable?
}
