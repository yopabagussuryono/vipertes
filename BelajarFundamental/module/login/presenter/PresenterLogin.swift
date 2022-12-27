//
//  PresenterLogin.swift
//  BelajarFundamental
//
//  Created by yopa bagus on 26/12/22.
//

// obj
// protocol
// ref to interactor, router, view

import Foundation

enum FetchError: Error {
    case failed
}

protocol Presenteruser {
    
    var router: RouterUser? {get set}
    var interactor: InteractorUser? {get set}
    var view: ViewUser? {get set}
    
    func interactortoUser(with result: Result<[EntityLogin], Error>)
}

class PresenterLogin: Presenteruser {
    var router: RouterUser?
    
    var interactor: InteractorUser? {
        didSet {
            interactor?.getEntityLogin()
        }
    }
    
    var view: ViewUser?
    
    
    
    func interactortoUser(with result: Result<[EntityLogin], Error>) {
        switch result {
        case .success(let users):
            view?.update(with: users)
        case .failure:
            view?.update(with: "Something went wrong")
        }
    }
    
    
}
