//
//  File.swift
//  KatalogCore
//
//  Created by dary winata nugraha djati on 28/11/24.
//

import RxSwift
import RealmSwift

public protocol LocalDataSource {
    associatedtype Response
    
    func saveToRealm<T: Object>(_ object: T) -> Observable<Bool>
    func getRealmDataById(id: Int) -> Observable<Response?>
    func fetchAllFavorite() -> Observable<[Response]>
    func deleteDataById(_ id: Int) -> Observable<Bool>
}
