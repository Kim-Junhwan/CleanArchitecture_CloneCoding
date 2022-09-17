//
//  MoviesListItemViewModel.swift
//  CleanArchitecture_Clone
//
//  Created by JunHwan Kim on 2022/09/16.
//

import Foundation
struct MoviesListItemViewModel: Equatable {
    let title: String
    let overView: String
    let releaseDate: String
    let posterImagePath: String?
}

extension MoviesListItemViewModel {
    init(movie: Movie) {
        self.title = movie.title ?? ""
        self.posterImagePath = movie.posterPath
        self.overView = movie.overview ?? ""
        if let releaseDate = movie.releaseDate {
            self.releaseDate = "\(NSLocalizedString("Release Date", comment: "")): \(dateFormatter.string(from: releaseDate))"
        }
        
    }
}

private let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    return formatter
}()
