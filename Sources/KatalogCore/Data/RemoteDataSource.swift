//
//  File.swift
//  KatalogCore
//
//  Created by dary winata nugraha djati on 28/11/24.
//

import RxSwift

protocol RemoteDataSource {
    associatedtype Response
    
    func fetchAllGamesWithPagination(_ page: Int) -> Observable<[Response]>
    func fetchGameDetails(_ id: Int) -> Observable<Response>
    func fetchAllSearchedGame(_ page: Int, searchedText: String) -> Observable<[Response]>
}
