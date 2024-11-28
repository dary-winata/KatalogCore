//
//  File.swift
//  KatalogCore
//
//  Created by dary winata nugraha djati on 28/11/24.
//

import RxSwift

protocol KatalogUseCase {
    associatedtype Response
    
    func getKatalog(page: Int) -> Observable<[Response]>
}