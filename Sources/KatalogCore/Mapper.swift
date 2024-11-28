//
//  File.swift
//  KatalogCore
//
//  Created by dary winata nugraha djati on 28/11/24.
//

import Foundation

public protocol Mapper {
    associatedtype ListRequest
    associatedtype ListResponse
    associatedtype DetailRequest
    associatedtype DetailResponse
    associatedtype Entity
    
    
    static func mapListGameIntoKatalogGame(with listGame: [ListResponse]) -> [ListResponse]
    
    static func mapGameIntoDetailGame(with game: DetailRequest) -> DetailResponse
    
    static func detailGameEntityIntoDetailGame(with game: Entity) -> DetailResponse
    
    static func detailGameIntoEntity(with game: DetailResponse) -> Entity
    
    static func mapListEntityIntoKatalogGameModel(listFavorite: [Entity]) -> [ListRequest]
}
