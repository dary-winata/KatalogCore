//
//  File 2.swift
//  KatalogCore
//
//  Created by dary winata nugraha djati on 28/11/24.
//

import RxSwift

public struct SearchInteractor<Response, Repo: Repository>: SearchUseCase where Repo.Response == Response {
    private let repo: Repo
    
    init(repo: Repo) {
        self.repo = repo
    }
    
    public func getSearchedKatalog(page: Int, with keyword: String) -> RxSwift.Observable<[Response]> {
        repo.getSearchedKatalog(page: page, keyword: keyword)
    }
}
