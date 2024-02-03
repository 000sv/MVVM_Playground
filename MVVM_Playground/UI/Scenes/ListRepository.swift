//  
//  ListRepository.swift
//  MVVM_Playground
//
//  Created by Pirrello, Osvaldo (VDM) on 03/02/24.
//

import Foundation

class ListRepository {
    
    // MARK: - Public Methods
    
    func fetch(completion: @escaping ([String]) -> ()) {
        // Simulated data fetching after 3 seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(5)) {
            let items: [String] = [
                "ABC",
                "DEF",
                "GHI"
            ]
            // Invoke completion
            completion(items)
        }
    }
}