//
//  InteractorLogin.swift
//  BelajarFundamental
//
//  Created by yopa bagus on 26/12/22.
//

// object
// protocol
// reference to presenter

import Foundation


protocol InteractorUser {
    
    var presenter: Presenteruser? {get set}
    
    func getEntityLogin()
    
}

class InteractorLogin: InteractorUser {
    var presenter: Presenteruser?
    
    func getEntityLogin() {
        guard let url = URL(string: "") else { return }
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                self?.presenter?.interactortoUser(with: .failure(FetchError.failed))
                return }
        do {
            let entities = try JSONDecoder().decode([EntityLogin].self, from: data)
            self?.presenter?.interactortoUser(with: .success(entities))
        }
            catch {
                self?.presenter?.interactortoUser(with: .failure(error))
            }
        }
        
        task.resume()
    }
}
