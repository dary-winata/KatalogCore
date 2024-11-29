//
//  File.swift
//  KatalogCore
//
//  Created by dary winata nugraha djati on 28/11/24.
//

import RxSwift

public protocol Repository {
    associatedtype Request
    associatedtype Response
    
    // Remote
    func getKatalog(page: Int) -> Observable<[Response]>
    func getSearchedKatalog(page: Int, keyword: String) -> Observable<[Response]>
    func getDetailKatalog(with id: Int) -> Observable<Response>
    
    // Local
    func saveFavoriteGame(with game: Request) -> Observable<Bool>
    func deleteFavoriteGame(with id: Int) -> Observable<Bool>
    func fetchAllFavorite() -> Observable<[Response]>
}
