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
    
    func getDetailed(with id: Int) -> Observable<Response> {
        repository.getDetailKatalog(with: id)
    }
    
    func saveFavoriteGame(with model: Request) -> Observable<Bool> {
        repository.saveFavoriteGame(with: model)
    }
    
    func deleteFavoriteGame(with id: Int) -> Observable<Bool> {
        repository.deleteFavoriteGame(with: id)
    }
}
