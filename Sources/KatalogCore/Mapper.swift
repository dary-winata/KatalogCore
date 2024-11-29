//
//  File.swift
//  KatalogCore
//
//  Created by dary winata nugraha djati on 28/11/24.
//

import Foundation

public protocol Mapper {
    associatedtype ListResponse
    associatedtype DomainKatalog
    associatedtype DomainDetail
    associatedtype DetailRequest
    associatedtype DetailResponse
    associatedtype Entity
    
    
    func mapListGameIntoKatalogGame(with listGame: [ListResponse]) -> [DomainKatalog]
    func mapGameIntoDetailGame(with game: DetailRequest) -> DomainDetail
    func detailGameEntityIntoDetailGame(with game: Entity) -> DomainDetail
    func detailGameIntoEntity(with game: DetailResponse) -> Entity
    func mapListEntityIntoKatalogGameModel(listFavorite: [Entity]) -> [DomainKatalog]
}
