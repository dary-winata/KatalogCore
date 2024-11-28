//
//  File 3.swift
//  KatalogCore
//
//  Created by dary winata nugraha djati on 28/11/24.
//

import RxSwift

protocol DetailUseCase {
    associatedtype Response
    associatedtype Request
    
    func getDetailed(with id: Int) -> Observable<Response>
    func saveFavoriteGame(with model: Request) -> Observable<Bool>
    func deleteFavoriteGame(with id: Int) -> Observable<Bool>
}
