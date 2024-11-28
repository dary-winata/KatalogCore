//
//  File 2.swift
//  KatalogCore
//
//  Created by dary winata nugraha djati on 28/11/24.
//

import RxSwift

protocol SearchUseCase {
    associatedtype Response
    
    func getSearchedKatalog(page: Int, with keyword: String) -> Observable<[Response]>
}
