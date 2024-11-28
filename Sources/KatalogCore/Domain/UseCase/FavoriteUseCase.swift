//
//  File 4.swift
//  KatalogCore
//
//  Created by dary winata nugraha djati on 28/11/24.
//

import RxSwift

protocol FavoriteUseCase {
    associatedtype Response
    
    func getAllFavorite() -> Observable<[Response]>
    func deleteFavoriteGame(with id: Int) -> Observable<Bool>
}
