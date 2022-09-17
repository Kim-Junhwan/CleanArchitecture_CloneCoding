//
//  MovieQueriesRepository.swift
//  CleanArchitecture_Clone
//
//  Created by JunHwan Kim on 2022/09/17.
//

import Foundation

protocol MoviesQueriesRepository {
    func fetchRecentsQueries(maxCount: Int, completion: @escaping (Result<[MovieQuery], Error>) -> Void)
    
    func saveRecentQuery(query: MovieQuery, completion: @escaping (Result<MovieQuery, Error>) -> Void)
}
