//
//  File 4.swift
//  KatalogCore
//
//  Created by dary winata nugraha djati on 28/11/24.
//

import RxSwift

public struct FavoriteInteractor<Response, Repo: Repository>: FavoriteUseCase where Repo.Response == Response {

    private let repo: Repo
    
    public init(repo: Repo) {
        self.repo = repo
    }
    
    public func getAllFavorite() -> Observable<[Response]> {
        repo.fetchAllFavorite()
    }
    
    public func deleteFavoriteGame(with id: Int) -> Observable<Bool> {
        repo.deleteFavoriteGame(with: id)
    }
}
