//  
//  ListUIState.swift
//  MVVM_Playground
//
//  Created by Pirrello, Osvaldo (VDM) on 03/02/24.
//

import Foundation

enum ListUIState {
    case loading
    case insert(IndexPath)
    case remove(IndexPath)
    case openDetail(String)
    case completed
    case error(String)
}