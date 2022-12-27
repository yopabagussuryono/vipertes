//
//  RouterLogin.swift
//  BelajarFundamental
//
//  Created by yopa bagus on 26/12/22.
//

// obj
// Entry point

import Foundation
import UIKit

typealias EntryPoint = ViewUser & LoginView


protocol RouterUser {
    
    static func start() -> RouterUser
    
    var entry: EntryPoint? {get set}
}

class RouterLogin: RouterUser {
    var entry: EntryPoint?
    
    static func start() -> RouterUser {
        
        let router = RouterLogin()
        
        var view: ViewUser = LoginView()
        var interactor: InteractorUser = InteractorLogin()
        var presenter: Presenteruser = PresenterLogin()
        
        view.presenter = presenter
        
        interactor.presenter = presenter
        
        presenter.router = router
        presenter.view = view
        presenter.interactor = interactor
        
        router.entry = view as? EntryPoint
        
        return router
    }
}

