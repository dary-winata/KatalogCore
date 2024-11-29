//
//  File 3.swift
//  KatalogCore
//
//  Created by dary winata nugraha djati on 28/11/24.
//

import RxSwift

public struct DetailInteractor<Request, Response, Repo: Repository>: DetailUseCase where Repo.Request == Request, Repo.Response == Response {
    
    private let repository: Repo
    
    public init(repository: Repo) {
        self.repository = repository
    }
    
    public func getDetailed(with id: Int) -> Observable<Response> {
        repository.getDetailKatalog(with: id)
    }
    
    public func saveFavoriteGame(with model: Request) -> Observable<Bool> {
        repository.saveFavoriteGame(with: model)
    }
    
    public func deleteFavoriteGame(with id: Int) -> Observable<Bool> {
        repository.deleteFavoriteGame(with: id)
    }
}
