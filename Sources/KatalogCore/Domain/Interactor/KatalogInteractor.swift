//
//  File.swift
//  KatalogCore
//
//  Created by dary winata nugraha djati on 28/11/24.
//

import RxSwift

public struct KatalogInteractor<Response, Repo: Repository>: KatalogUseCase where Repo.Response == Response {
    
    private let repo: Repo
    
    init(repo: Repo) {
        self.repo = repo
    }
    
    public func getKatalog(page: Int) -> RxSwift.Observable<[Response]> {
        repo.getKatalog(page: page)
    }
}
