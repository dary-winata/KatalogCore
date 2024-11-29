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
    
    
    static func mapListGameIntoKatalogGame(with listGame: [ListResponse]) -> [DomainKatalog]
    
    static func mapGameIntoDetailGame(with game: DetailRequest) -> DomainDetail
    
    static func detailGameEntityIntoDetailGame(with game: Entity) -> DomainDetail
    
    static func detailGameIntoEntity(with game: DetailResponse) -> Entity
    
    static func mapListEntityIntoKatalogGameModel(listFavorite: [Entity]) -> [DomainKatalog]
}
